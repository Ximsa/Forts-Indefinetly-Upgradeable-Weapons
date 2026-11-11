# Plan: v2 to feature complete

Agreed with the owner on 2026-11-11. Terms (level, step, tier, variant, v1, v2, feature complete, commander parity,
AI parity, overlay, replay) are defined in [GLOSSARY.md](../GLOSSARY.md). The rules the work must follow are in
[DESIGN.md](DESIGN.md). v1's numbers and mechanisms are in [V1.md](V1.md).

**Status: step 3 in progress (2026-11-11). Every row of its table is in and tested by the owner; left: the final
round with all High Seas weapons built and upgraded and a clean log ("Done when"). Step 4 is next.**

## Working rules

- Work the steps in order. A step is done only when its "Done when" holds.
- Publish nothing until v2 is feature complete (`docs/adr/0001-v2-replaces-v1-only-when-feature-complete.md`).
  Commits and local deploys only.
- Each change that affects the game ends with `.\deploy.ps1`, a round in Forts by the owner, and a check of the
  game log (AGENTS.md). Say what was verified in-game and what was not.
- DLC files are packed and unreadable. Find their facts with a temporary `Log` and one round in-game, as was done for
  harpoon; remove the logging once the fact is recorded.
- When a step needs a decision that isn't written here or in DESIGN.md, ask the owner.

## Step 1: core rules

Changes that affect every level weapon, so they come first.

1. **Upgrade count 48.** Set `UpgradeCount = 48` in `lib/scalings.lua`, run `cd lib && lua55 pregen_files.lua`.
   Done when every `weapons/<name>/` folder holds exactly the stubs `_2` .. `_49`.
2. **Levels independent of the count.** Replace `RoundsEachBurst`'s `2 / UpgradeCount` with a fixed `grow_scale`
   on the linear curve (doubling by step 48, i.e. `1/48`; the value is tuned in step 2). The sprite tint may stay
   tied to the count. Done when no stat formula other than the tint reads `UpgradeCount`.
3. **Variants and tier upgrades keep their level.** For every link the game defines from a registered base weapon
   to another registered weapon (its `Upgrades` entries, `InvertedType` (already done), and any other link field
   found in the game's `weapon_list.lua` files or the dumps), give each level weapon the same link to the same
   level of the target. Price a tier upgrade as the build-cost difference between the two level weapons, never
   below the game's own price for that tier upgrade. Done when `machinegun_5` offers `minigun_5` in-game at that
   price, and the offline check (item 6) finds no link from a level weapon to a base weapon that has levels.
4. **Upgrade time.** Add a field `upgrade_time` (seconds) to the `WeaponUpgrades` entries and use it as the level
   weapons' `BuildTimeComplete`; without the field, keep the base weapon's build time. Fill it by hand: v1's
   values (V1.md) for the weapons v1 had, the weapon's reload time for the others. That `BuildTimeComplete` is what
   sets the upgrade duration is inferred from v1; confirm it in-game. Done when a cannon level upgrade takes
   about 26 s in-game and every registry entry has the field.
5. **Test option for `deploy.ps1`.** Add `-UpgradeCount <n>`, which lowers `UpgradeCount` in the deployed copy of
   `lib/scalings.lua` only (extra stubs in the deployed folder are harmless). Done when `.\deploy.ps1 -UpgradeCount 8`
   leaves the repo unchanged and the game shows 8 upgrades.
6. **Offline check.** `lib/check_lists.lua`, run with `lua55` from `lib/`: stub the engine functions
   (`InheritType`, `FindWeapon`, `FindProjectile`, `Log`, `L`, ...), load the game's readable base lists
   (`data\weapons\weapon_list.lua`, `projectile_list.lua`, the Tons of Guns ones), then run this mod's
   `weapon_list.lua`, `projectile_list.lua` and `strings.lua`. Report: Lua errors; level weapons whose stub file
   is missing; upgrade, variant or projectile names that don't exist; level weapons without a name string.
   It needs shims for Lua 5.5 (`math.log10` at least) and can't run the per-weapon files or DLC lists.
   Done when it runs clean on the current repo and fails when a stub is deleted or a registry name is misspelt.

## Step 2: balance against v1

Rules: DESIGN.md, "Balance against v1". Numbers: V1.md.

1. **Report script** `lib/balance_report.lua` (`lua55`, from `lib/`). For each weapon both versions have and each
   level 2..49, print v1 and v2 side by side: power (direct damage × rounds per burst ÷ reload, as a multiple of
   the base weapon), total metal and energy spent to reach the level, fire cost per point of damage, and the
   deviation of v2 from v1 for each. Also report range, splash, hitpoints and accuracy without comparing.
   Take v1's values from its generated level files and formulas, base values from the readable game files, and
   DLC base values from `data\mods\iuw2\dump\`. Write the output to `dump/balance_<date>.txt` (git-ignored).
2. **Tune** only the allowed parameters (DESIGN.md) until the average deviation over levels 2..24 is smallest
   (owner, 2026-11-11: the fit stops before 1-round weapons get their second round at level 25).
3. **List** the weapons that stay far from v1, and the weapons v1 never had (machinegun, sniper, mortar, missiles,
   flak, rocketemp, harpoon, runway) next to a comparable shared weapon, for the owner to judge. Include the
   runway ammunition's rounds per burst.

Done when the report exists, the tuned values are in `lib/scalings.lua` and DESIGN.md, and the owner has accepted
the list from item 3.

## Step 3: remaining High Seas weapons

One weapon at a time: find its facts in-game, add the registry entry (with `upgrade_time`), regenerate stubs,
deploy, owner tests, tick the README.

| README name | SaveName(s) | Notes |
|---|---|---|
| Runway Mk II | `runway2` | `runway` is registered; `runway2` is its tier upgrade and uses the same projectile tree |
| Deck Gun | `turret`, `turret2`, `turret2_focus`, `turret3`, `turret3_focus` | all five get levels; the focused forms are variants |
| Energy Dome | `dome` (projectile `dome`) | open: how it should grow. Find which fields set its strength, then ask the owner |
| Marine Swarm | to confirm (dump header `subSwarm`) | likely a variant of the swarm |
| Marine Warhead | to confirm (a second `Missile [missile2]` dump section) | likely a variant of the warhead |
| Orbital Laser | `orbital_laser`, `orbital_laser2` | last; marker and beam setup is unusual |

For each weapon, record: the owning mod (the log's "Activating mod" lines), whether the original file already has
`Projectile`, `Sprites` and `dlc2_Ammunition`, and which overlays add to it (list them under `overlays`).

Done when every row is ticked in the README and the game log is clean with all of them built and upgraded.

## Step 4: AI parity and transformed projectiles

1. **AI parity.** Add `ai/ai.lua`. For every level, copy each AI entry that names a registered base weapon or one
   of its projectiles to the level's name: `ShootableProjectile`, `data.AntiAirErrorStdDev`, `data.AntiAirOpenDoor`
   (also its inner per-projectile tables), `data.AntiAirFireProbability`, `AntiAirFireProbabilityHumanAssist`, and
   any other table in the game's `ai\ai.lua` (and Tons of Guns' `ai\ai.lua`) keyed by weapon or projectile name.
   Done when a level-1 flak shoots down a level-7 mortar shell as it does a base one, and a level-7 flak
   behaves as anti-air like the base flak.
2. **Transformed projectiles keep their level.** The game makes a separate projectile `"flaming" .. SaveName`
   for each normal one (`MakeFlamingVersion` in the game's and Tons of Guns' `projectile_list.lua`), and a level
   projectile inherits the base's link to it. Give every level projectile its own flaming version at the same
   level, and do the same for "damaged" versions (`damagedmissile2`) and any other transformation found.
   Done when a level-7 cannon shot through a firebeam keeps its level-7 damage (plus the flaming bonus).

## Step 5: commanders

Commander mods in `data\mods`: `commander-bpo-scattershot`, `-bpo-seep`, `-bpo-shockenaugh`, `-da-builder`,
`-da-overclocker`, `-da-speed-demon`, `-ee-fireman`, `-ee-heavy-weapons`, `-ee-marksman`, `-iba-miser`, `-iba-spy`,
`-iba-turtle`. Buster and Moonshine (`commander-cf-*`) and Phantom are only in the packs. Confirm which folder is
which README name before starting.

1. **Survey.** For each commander, list what it changes and which registered weapons that touches: weapon-file
   overlays, `weapon_list.lua` / `projectile_list.lua` hooks (check once by log whether they run before or after
   this mod's), commander-only weapons, and `commander.lua` scripts that name weapons. Record the table here.
2. **Mechanism.** Reuse v1's sub-mod layout (V1.md), generated by `lib/pregen_files.lua` from a table in
   `lib/scalings.lua` instead of written by hand. First prove with one file that `mods/commander-<x>/mods/1369514837/...`
   still applies to a Workshop-loaded mod in the current game.
3. **Order.** Scattershot first, then the other nine v1 covered (Seep, Shockenaugh, Buster, Moonshine, Overdrive,
   Hurricane, Firebird, Warthog, Armourdillo), then Eagle Eye, Architect, Pinchfist, Spook, Phantom.
   Commander-only weapons (e.g. Armourdillo's armour-piercing minigun) get levels as part of their commander.
   For Overdrive, find out what it does with `UpgradeNumber` and whether it should be the level or the step.

Done per commander when, in a skirmish with that commander, a level-2 and a level-49 weapon show the same passive
and active effects as their base weapon, and the commander is ticked in the README.

## Step 6: finish

1. Run the balance report again with every weapon in it; the owner judges new outliers.
2. Measure the match load time with everything active (`Loading took` in the game log). About one minute is
   acceptable; raise it with the owner if it is clearly more.
3. Release: `ItemVersion` above v1's last (the old v1 copy says 51), release notes (v1 saves don't carry over;
   third-party weapons are gone; levels now run 2..49), README complete, known issues in AGENTS.md cleaned up.
   The owner publishes from Forts.

Done when every part of "feature complete" in GLOSSARY.md holds and the owner has published.

## Facts collected so far

- Load time: 6–10 s per match with almost no level weapons, 23–26 s with 672 (21 weapons × 32); roughly 0.027 s
  per level weapon. The finished mod has about 1,800.
- The game prices a tier upgrade as the build-cost difference (machinegun 75/250 → minigun 275/650 costs 200/400).
- Every weapon file starts with fresh globals, so nothing can be passed from the base weapon's load to a level weapon's.
- Harpoon gets its ammunition from two overlays (see its `overlays` in `lib/scalings.lua`); its default ammo fires
  `harpoon_default` and is only labelled with the Heavy Mortar's name.
- Weapons link to other weapons only through `Upgrades` and `InvertedType` (the only such fields among Forts.exe's
  weapon-list strings; its errors "%s upgrades to %s which does not exist" and "%s has inverted type %s ...").
  Some base `Upgrades` entries are keyed by SaveName (`["mortar2"] = {...}`), so iterate them with `pairs`.
- The offline check needs the engine global `FrameRate` (25, as the in-game dumps show).
- `upgrade_time` for weapons v1 didn't have is the reload time from `data\mods\iuw2\dump\weapons.lua`, except the
  runway: its reload time is 1.05 s, so the owner set 15 s (2026-11-11). The machinegun's 1.5 s is accepted.
- Owner decisions for step 2 (2026-11-11): `RoundsEachBurstGrowScale = 1/24` (1-round weapons get a second round
  in real battles); balance is fitted over levels 2..24; beams grow `BeamDuration` at the rounds-per-burst rate and
  stop scaling `BeamDamageMultiplier`; `ReloadDecay = 0.98` and `DamageGrowScale = 0.125` (v1's rate) are fixed by
  the owner, so only the build and fire cost rates are tuned.
- DLC base build costs (logged 2026-11-11, metal/energy): buzzsaw 200/2000, smokebomb 200/800, howitzer 1000/9000,
  magnabeam 600/5000, harpoon 250/3000, runway 500/4000, runway2 1000/10000. They are in `lib/balance_report.lua`.
- Beam weapons' energy fire cost was divided by `BeamDuration` twice (per-shot cost fell below the base); fixed in
  `weapon_file_upgrade.lua` on 2026-11-11.
- The DLC weapons' build costs (buzzsaw, smokebomb, howitzer, magnabeam, harpoon, runway) are only in the packed
  lists; the weapon-file values come from `data\mods\iuw2\dump\weapons.lua`, whose sections aren't valid Lua as a
  whole (`offline_env.lua` reads their simple `Name = value` lines).
- High Seas original files (logged 2026-11-11 from the weapons' `FileName`): `mods/dlc2/weapons/<name>.lua` for runway,
  turret, turret2, turret2_focus, turret3, turret3_focus, dome, orbital_laser and orbital_laser2. Runway Mk II is
  `mods/dlc2_skirmish/mods/dlc2/weapons/runway2.lua` (skirmish only); its textures and effects are under `mods/dlc2`,
  so it runs with `path = "mods/dlc2"` (registry field `original_file`).
- Runway Mk II (2026-11-11): owning mod `dlc2_skirmish` (file above). Its original sets `Projectile = "thunderbolt"`,
  `Sprites` (`runway2-base`, `runway2-headbg`) and `dlc2_Ammunition` (thunderbolt and nighthawk, 1 round each), the
  same projectile tree as the runway; no overlays needed. Loaded clean in skirmish and local multiplayer.
- Deck Gun (2026-11-11): `turret`, `turret2`, `turret2_focus`, `turret3`, `turret3_focus`, owning mod `dlc2`, files
  `mods/dlc2/weapons/<name>.lua`. Each original sets `Projectile = "turret"` (no child projectiles) and three sprites
  (`turret-decal_*`, `turret-base*`, `turret-head*`), no `dlc2_Ammunition`, no overlays. Upgrade times are the reload
  times (25 / 30 / 35 s). Tier upgrades and focus switches keep the level via the step 1 code. Owner test: works.
- Energy Dome (2026-11-11): `dome`, owning mod `dlc2`, file `mods/dlc2/weapons/dome.lua`. The original sets
  `Projectile = "dome"` and sprites `dome-base`, `dome-head`, `dome-arm`, `dome-flash`; no `dlc2_Ammunition`, no overlays.
  It fires 50 `dome` bolts 0.04 s apart (speed 1000, reload 15 s); each bolt becomes a `dome_barrier` beam (MaxAge 1 s,
  AntiAirDamage 1e6). Raising the barrier's MaxAge made no visible difference; the dome grows by firing longer
  (`DomeScaling`). Owner test: works.
- High Seas weapon list (logged 2026-11-11; SaveName, file under `mods/dlc2/weapons/`, links, metal/energy): dome 150/800;
  hardpoint → turret, orbital_laser (500/2000; a platform without a projectile, no levels); orbital_laser →
  orbital_laser2 (700/4000); orbital_laser2 (800/6000); runway → runway2; subswarm (Marine Swarm, 600/3000) →
  sublauncher (Marine Warhead, 800/6000); turret → turret2 (700/4000); turret2 → turret3, turret2_focus (900/6000);
  turret2_focus → turret3_focus, turret2; turret3 → turret3_focus (1150/7500); turret3_focus → turret3. No
  `InvertedType`. Marine Swarm fires `missile` (14 rounds, reload 20 s), Marine Warhead `missile2` (reload 25 s).
  Owner test: works.
- Orbital Laser (2026-11-11): `orbital_laser` → `orbital_laser2`, files `mods/dlc2/weapons/<name>.lua`. Both fire
  `ol_marker_sweep` and carry `ol_marker_sweep` and `ol_marker_focus` as ammunition. A marker carries
  `dlc2_orbital = { Ammo = <tag>, Duration = 5, Delay = 3, ... }`; the hidden weapon `orbital_laser_source`
  (`mods/dlc_harpoon/weapons/orbital_laser_source.lua`, its ammunition added by the overlay
  `mods/dlc2/mods/dlc_harpoon/weapons/orbital_laser_source.lua`) fires the ammunition entry with that `Tag`
  (`ol_beam_sweep`, `ol_beam_focus`). The beams' damage comes from their `BeamDamage` function, not `ProjectileDamage`.
  This mod points the source's `FileName` to `weapons/orbital_laser_source.lua`, which adds level entries. Owner test
  with a strengthened test build: level beams fire and hit harder.
- Forts gives mods no `loadfile` (a temporary log that used it broke `weapon_list.lua` for a round).
- The AI tables are keyed by weapon or projectile SaveName, so no level weapon or projectile is in them today.
