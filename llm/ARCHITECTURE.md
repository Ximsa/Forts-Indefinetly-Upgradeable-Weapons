# Architecture

How the mod turns a fixed list of base weapons into chains of `UpgradeCount` extra upgrade levels.
For *why* the numbers are what they are, see [DESIGN.md](DESIGN.md).

## Background: how Forts loads mods

- A mod is a folder whose `mod.lua` holds the metadata (`Selectable`, `Priority`, `Category`, DLC flags).
- Mods don't replace game files. After Forts loads a base data file (e.g. `weapons/weapon_list.lua`),
  it runs every active mod's file at the **same relative path** in the same Lua environment.
  Mod files therefore change the global tables that already exist (`Weapons`, `Projectiles`, `Weapon` strings, ...).
- `path` is the folder of the mod whose file is currently running. Other mods are referred to by
  their paths: `mods/weapon_pack` (Tons of Guns), `mods/dlc1_weapons` (Moonshot), `mods/dlc2` (High Seas).
- `Priority = 9.99` in `mod.lua` makes this mod load late, after other weapon mods (e.g. Tanya at 9.9),
  so their weapons and projectiles already exist when this mod reads them.

## Repository layout

```
mod.lua                     mod metadata (priority, DLC support)
displayname.lua             Workshop display name
itemversion.lua             Workshop item version (bump on release)
publishedfileid.lua         Workshop id
preview.jpg                 Workshop preview image
CLAUDE.md                   points to llm/AGENTS.md
llm/                        LLM agent material (AGENTS.md, ARCHITECTURE.md, DESIGN.md, PLAN.md, V1.md)
GLOSSARY.md                 the project's terms
docs/adr/                   decision records
deploy.ps1                  copies the mod into the Steam Workshop folder for testing
lib/
  scalings.lua              single source of truth: UpgradeCount, scaling functions, WeaponUpgrades registry
  util.lua                  DeepCopy, Merge, Compose, Significant3, RecursiveUpdateFiltered, ...
  pregen_files.lua          OFFLINE generator for weapons/<name>/<name>_<level>.lua stubs
  dumper.lua                debugging aid: logs a weapon file's stat globals; holds dumped base values
weapons/
  weapon_list.lua           hook: adds upgrade entries + level weapons to `Weapons`
  projectile_list.lua       hook: adds scaled projectiles to `Projectiles`
  strings.lua               hook: adds "<Name> Level N" display strings
  weapon_file_upgrade.lua   shared body that every generated per-level weapon file runs
  <name>/<name>_<level>.lua GENERATED stubs, one per weapon per level
```

## The registry: `lib/scalings.lua`

Everything is driven by three globals:

| Global | Purpose |
|---|---|
| `UpgradeCount` | number of upgrades per weapon; level 1 is the base weapon, upgrades are levels `FirstLevel`(2)..`LastLevel`(`UpgradeCount + 1`) |
| `Scaling.WeaponList` / `.WeaponFile` / `.ProjectileList` | maps field name → `fn(value, step)` used at each stage; `step = UpgradeStep(level)` = `level - 1` (1..`UpgradeCount`) |
| `WeaponUpgrades` | one entry per upgradeable weapon (see below) |

`UpgradeNumber` on level weapons is set to the upgrade step. No readable game file reads it. v1 used it for Overdrive commander support (see PLAN.md, phase 3).

A `WeaponUpgrades` entry:

```lua
{
  mod               = "mods/weapon_pack", -- mod that owns the original weapon file ("." = base game)
  weapon_savename   = "flak",             -- SaveName in Weapons
  weapon_filename   = "flak.lua",         -- file under <mod>/weapons/
  projectile        = { flak = { shrapnel = {} } }, -- projectile tree: key = SaveName, value = child projectiles
  ammunition        = {},                 -- High Seas ammunition projectiles (renamed to <projectile>_<level>)
  overlays          = nil,                -- optional: { { mod = "mods/x", file = "mods/y/weapons/z.lua" } } other mods' overlay files to replay
  upgrade_time      = 6.75,               -- seconds a level upgrade takes (BuildTimeComplete of the level weapons)
  scaling           = nil,                -- optional: per-weapon rules on top of Scaling, e.g. DomeScaling (see ScalingFor)
  original_file     = nil,                -- optional: the original file if it isn't <mod>/weapons/<weapon_filename>
                                          -- (e.g. runway2 is in mods/dlc2_skirmish/mods/dlc2/weapons/); it still runs with path = mod
  build_cost_factor = 0.5,                -- multiplier on base build/repair cost
}
```

DLC entries are only added when `moonshot` / `dlc2Var_Active` is set.
Every hook file runs `dofile(path .. "/lib/scalings.lua")`, so the registry is rebuilt in each environment.

## Load pipeline

### 1. Offline: stub generation (`lib/pregen_files.lua`)

Run with a stand-alone Lua interpreter **from inside `lib/`** (it uses `dofile("scalings.lua")` and writes to `../weapons/`).
It forces `moonshot` and `dlc2Var_Active` on so that stubs exist for every weapon, and writes
`weapons/<name>/<name>_<level>.lua` for `level = FirstLevel..LastLevel` (2..`UpgradeCount + 1`):

```lua
ModPath = "mods/weapon_pack"
OriginalFileName = "20mmcannon.lua"
UpgradeLevel = 2
dofile(path .. "/weapons/weapon_file_upgrade.lua")
```

Forts gives every weapon its own file and these files can't take parameters, so stubs are the
only way to pass `UpgradeLevel` to the shared code. Generated files are committed.

### 2. In game: `weapons/weapon_list.lua`

For each `WeaponUpgrades` entry, `AddUpgradesForWeapon`:

1. Finds the base weapon (`FindWeapon`), notes its tier upgrades to other registered weapons, and adds an upgrade
   entry to it → `<savename>_2`.
2. For each level, inserts a new weapon `InheritType(base, nil, {...})` with:
   - `SaveName = <savename>_<level>`, `FileName` = generated stub, `Enabled = false`, `Prerequisite = "upgrade"`
   - build/repair costs from `Scaling.WeaponList`; the upgrade price is the cost **difference** between two levels
   - `CompatibleGroupTypes` = base groups + base SaveName + all of its level SaveNames
   - `BuildTimeComplete` = the entry's `upgrade_time` (else the base's)
   - an upgrade entry pointing to `<savename>_<level+1>` (not on the last level)
   - for each tier upgrade of the base (e.g. machinegun → minigun), one pointing to the same level of the target,
     priced as the build-cost difference of the two level weapons, never below the game's price
   - `InvertedType` = the same level of the base's inverted type, if that has levels

The orbital laser's beam is fired by a hidden weapon, `orbital_laser_source`. `weapon_list.lua` points its `FileName` to
`weapons/orbital_laser_source.lua`, which runs the original and High Seas' overlay for it (`OrbitalLaserSource` in
`lib/scalings.lua`), then adds one ammunition entry per level beam, tagged `<beam>_<level>`, which a level marker orders.

### 3. In game: `weapons/projectile_list.lua`

Walks each entry's `projectile` tree recursively. For each projectile SaveName (once only, see `added_projectiles`)
and each level, it builds `<projectile>_<level>`: it applies the `Scaling.ProjectileList` functions to the fields that exist,
inherits the rest from the base, and renames child projectile references (e.g. `shrapnel` → `shrapnel_<level>`)
via `RecursiveUpdateFiltered`. Incendiary splash projectiles without an `IncendiaryRadius` are given one so that it can scale.

### 4. In game: `weapons/strings.lua`

Adds `Weapon["<savename>_<level>"] = <base name> .. " Level N"` and copies `Tip2`.

### 5. In game, per placed weapon: `weapons/weapon_file_upgrade.lua`

Runs when Forts loads a generated stub:

1. `dofile`s the **original** weapon file, with `path` temporarily set to `ModPath`. Then replays the entry's `overlays`:
   Forts only runs other mods' overlay files when it loads the original itself, and every weapon file starts with fresh globals.
2. If it's an `Inverted` variant: loads the non-inverted stub of the same level, then flips it (`HandleInvertedType`).
3. Otherwise:
   - `UpdateSprite` – copies the head (or base) sprite, renames it `<sprite>_<level>` and tints it based on the level
   - `AdjustRoundsEachBurst` – sets defaults so that burst scaling also works for single-shot weapons
   - `ApplyScaling` – applies `Scaling.WeaponFile` to every matching global
   - `UpgradeAmmunition` – High Seas ammunition renaming: scales each `dlc2_Ammunition` entry's own stats with `Scaling.WeaponFile` (they override the weapon's) and renames each `dlc2_Ammunition` entry whose `Projectile` is in the entry's `ammunition` table to `<projectile>_<level>`; those projectiles must also be in `projectile`
   - `ExtendBeamTable` – stretches beams to the scaled `BeamDuration`; changes `EnergyFireCost` to a per-second value
   - `Projectile = Projectile .. "_" .. UpgradeLevel`

## Naming conventions

| Thing | Pattern |
|---|---|
| level weapon SaveName | `<weapon_savename>_<level>` |
| level projectile SaveName | `<projectile_savename>_<level>` |
| level sprite | `<original sprite name>_<level>` |
| stub file | `weapons/<weapon_filename without .lua>/<same>_<level>.lua` |

Every stage depends on this `_<level>` suffix; keep it consistent.
Level 1 is the unmodified base weapon, so suffixes start at `_2`. Names use the level; scaling functions get
the upgrade step (`UpgradeStep(level)` = `level - 1`), so `<name>_2` is scaled by step 1.

## Tooling

- The repo has no automated tests. To verify a change, load the mod in Forts and check the in-game log (`Log(...)`).
