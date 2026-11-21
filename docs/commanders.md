# Adding a commander

A commander changes weapons and projectiles by name, and these changes miss the level versions.
Support for a commander lives in a sub-mod, `mods/commander-<x>/`, which the game activates only with that commander.
The sub-mod contains only code of this mod.
Code from the commander is never copied into the repository, partly for reasons of copyright.

## Procedure

1. **Survey the commander.**
   Record what it changes in its weapon files, in its list hooks, and in its scripts (`llm/PLAN.md`, step 5).
   For packed commanders, a temporary probe that logs the changed values serves the same purpose.
2. **Weapon files.**
   List the paths of the commander's overlay files in `CommanderOverlayFiles` in `lib/pregen_files.lua`,
   relative to the game's data folder, and run `lua55 pregen_files.lua` from `lib/`.
   For each level, the generated file rebuilds the level weapon with the commander's own file replayed.
3. **Named list changes.**
   Write `mods/commander-<x>/weapons/projectile_list.lua` (or `weapon_list.lua`).
   It runs after the commander's own hook and reads the changed values from the base entries.
   `ApplyBaseValuesToLevels(name, fields)` copies changed fields to every level, scaled where the levels scale them.
4. **Scripts.**
   `mods/commander-<x>/commander.lua` is appended to the commander's script.
   For the focus icon, it consists of a single line: `dofile(path .. "/lib/mark_level_weapons.lua")`.
5. **No changes needed.**
   A commander whose changes already reach the levels, such as Architect, still receives its folder,
   holding only a `.gitkeep`, in preparation of later changes.
6. **Test in a match.**
   Compare a level-2 and a top-level weapon with the base weapon, with and without the active ability.
   Then tick the commander in `ROADMAP.md`.

## Order of application

The game runs this mod's list hook, then the commander's list hook, then the sub-mod's list hook,
and finally the `RegisterApplyMod` callbacks.
Loops over every weapon or projectile therefore reach the levels without help.
A commander's weapon file is applied to the base weapon before level scaling,
so set values and absolute changes grow with the level.
Sprite changes are undone, so that the level tint remains.

## Replaying a commander's weapon file

The game applies a commander's overlay of a weapon file only when it loads the base file.
The level weapons are built from separate stubs, so they would lack the change.
For each listed overlay and level, `lib/pregen_files.lua` therefore writes a file such as
`mods/commander-bpo-seep/mods/1369514837/weapons/missilelauncher/missilelauncher_2.lua`:

```lua
CommanderOverlays = { { mod = "mods/commander-bpo-seep", file = "mods/commander-bpo-seep/weapons/missilelauncher.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
```

The folder `mods/1369514837/` overlays this mod's own files by path, as 1369514837 is its Workshop id.
While the commander is active, the game thus runs this file directly after the level stub, with the same globals.
At that point the level weapon is complete, but built without the commander's change.

- The first line names the commander's file to replay; `mod` is the commander's folder,
  which becomes `path` while that file runs.
- The second line resets `path`, which points to the sub-mod in such a file, to the root of this mod.
- The third line builds the level weapon a second time.

In this second run, `weapons/weapon_file_upgrade.lua` loads the original weapon file, which restores the base values.
`ReplayCommanderOverlays` then runs the commander's file on these values, and the level scaling follows as usual.
The level weapon is thus the commander's version of the base weapon, scaled to its level.
The repository holds only the path of the commander's file, never its code.

The second run happens once per level and per loading pass of the commander, and adds a little to the loading time.
Without the commander, the sub-mod is inactive and the first run alone defines the level weapon.

## Common pitfalls

- **Projectile swaps.**
  A commander may make a weapon fire another projectile, e.g. Seep's armoured missiles.
  The level weapon then fires `<projectile>_<level>`, which must exist.
  If the commander creates that projectile after this mod's list hook, the sub-mod must create its levels.
- **Beams.**
  An overlay that sets its own `BeamTable` (Shockenaugh's firebeam fires a laser) keeps that table.
  The level file then lengthens it rather than regenerating the original beam, which would lose the damage column.
- **Wrong overlay paths.**
  A path in `CommanderOverlayFiles` that does not exist causes an error for every level in the game log.
  The path must also match the location of the original file, or the game does not apply it to the base weapon either.
- **`MarkDevicesOnActive`.**
  Calling it a second time makes its handlers call themselves.
  The shared script therefore adds the level names to the existing list instead.
- **Globals in sub-mod list hooks.**
  These hooks share their globals with this mod's list hook.
  Loading `lib/scalings.lua` again is unnecessary and fails, since `path` then points to the sub-mod.
- **Order of AI files.**
  A commander's AI file may run after `ai/ai.lua`.
  Entries that it adds for its own projectiles are then not copied to the levels.
- **Overdrive.**
  Overdrive is the one deliberate exception to commander parity; see `llm/DESIGN.md`.
