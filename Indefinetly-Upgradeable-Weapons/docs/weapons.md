# Adding a weapon

A weapon receives levels once it has an entry in the registry, `WeaponUpgrades` in `lib/scalings.lua`.
The mod never copies the original weapon file.
Each level is a small generated stub that loads the original file and scales its values.

## Procedure

1. Add an entry to `WeaponUpgrades`.
   Weapons from a DLC belong in the matching `if moonshot` or `if dlc2Var_Active` block.
   The fields are as follows:
   - `mod` and `weapon_filename` locate the original file, relative to the game's data folder (`"."` for the base game).
     `original_file` overrides this location where the file lies elsewhere.
   - `weapon_savename` is the SaveName of the base weapon.
   - `projectile` is the tree of every projectile the weapon fires, with child projectiles nested below their parent.
   - `ammunition` lists the projectiles of High Seas ammunition entries; `overlays` lists other mods' files that
     the game would apply to the original file.
   - `upgrade_time` is the duration of one level upgrade; `build_cost_factor` corrects the price of one weapon.
   - `scaling` optionally replaces the general scaling rules for this weapon.
2. Generate the stubs: `cd lib && lua55 pregen_files.lua`.
3. Run the offline check: `lua55 check_lists.lua`.
   It covers the base game and Tons of Guns only, since the DLC files are packed.
4. Deploy with `.\deploy.ps1` and test the weapon in a match.
   Build it, upgrade it to level 2 and to the top level, and read the game log afterwards.
5. Tick the weapon in `ROADMAP.md`.

## Common pitfalls

- **Missing child projectiles.**
  A child projectile that is absent from the tree keeps its base values at every level,
  e.g. the shrapnel of the flak or the bombs of a runway.
- **Silent failures for other mods.**
  An entry whose `mod` is not the base game is skipped quietly if its files are missing,
  because Lua cannot tell whether that mod is active.
  A misspelt SaveName therefore produces no error; the weapon simply has no levels.
- **Ceiling variants and tiers.**
  An inverted variant (e.g. `missileinv`) and every tier of a chain need entries of their own.
  Tier upgrades and mode switches then lead to the same level of the other weapon.
- **Overlays from other mods.**
  The game applies another mod's overlay only when it loads the original file itself.
  Such overlays must be listed in `overlays`, or the level weapon lacks their changes.
- **Beam weapons.**
  A beam does not gain rounds per burst; its `BeamDuration` grows instead.
  A beam that defines neither `GenerateBeamTable` nor `BeamTable` is not extended.
- **Loading time.**
  Every entry adds one weapon per level.
  For quick tests, deploy fewer levels with `.\deploy.ps1 -UpgradeCount 2`.
