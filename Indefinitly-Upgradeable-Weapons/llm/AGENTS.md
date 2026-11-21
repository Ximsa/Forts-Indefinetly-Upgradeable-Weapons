# Agent guide

Instructions for LLM coding agents working on this mod (v2 of Indefinitely Upgradeable Weapons). Repo-wide rules
(environment, how Forts loads mods, reading the game log, commits) are in [../../llm/AGENTS.md](../../llm/AGENTS.md).
LLM-related material for this mod lives in `llm/` (the mod's `CLAUDE.md` only points here). The glossary (`GLOSSARY.md`) and decision records (`docs/adr/`) are for
people too and live at the mod root.

## Read first

- [GLOSSARY.md](../GLOSSARY.md) – the project's terms (level, step, tier, variant, v1, v2, feature complete, parity). Use these words.
- [PLAN.md](PLAN.md) – the agreed steps to feature complete, with a "Done when" for each. Start here to find the next piece of work.
- [DESIGN.md](DESIGN.md) – the goals and the rules for levels, balance, costs and scope
- [ARCHITECTURE.md](ARCHITECTURE.md) – the pipeline this mod builds on top of Forts' mod loading
- `lib/scalings.lua` – the registry; most changes start here
- [V1.md](V1.md) – v1's formulas, numbers and its commander and AI mechanisms. Read when tuning balance or adding commander or AI support.
- `docs/adr/` – decisions that are hard to undo, with their reasons

## Environment

- Outside the game, only `lib/check_lists.lua` runs the list hooks (against stubs and the readable base lists);
  weapon files only run in-game.
- v1 is `../Indefinitely-Upgradeable-Weapons-Legacy/` in this repo (see also V1.md).

## Conventions

- Style: 3 spaces of indentation in most files (`weapon_list.lua` uses tabs; match the file you're editing), `snake_case` locals,
  `PascalCase` globals/functions.
- Never edit an original weapon file's behaviour by copying it; always apply changes on top of it in `weapon_file_upgrade.lua`.
- New tunable numbers go in `lib/scalings.lua`, not into the hook files. Exception: commander support lives in
  the commander's sub-mod `mods/commander-<x>/`, numbers included (DESIGN.md, "Commanders"); it never copies the
  commander's own code.
- Keep the `<name>_<level>` suffix convention for SaveNames, projectiles, sprites and stub files.

## Common tasks

### Add support for a weapon

1. Add a `WeaponUpgrades` entry in `lib/scalings.lua` (put DLC weapons in the matching `if moonshot` / `if dlc2Var_Active` block).
   The `projectile` tree must include every child projectile that needs scaling.
2. Regenerate the stubs: `cd lib && lua55 pregen_files.lua` (`ai/ai.lua` reads the registry itself).
3. Run the offline check: `cd lib && lua55 check_lists.lua` (base-game and Tons of Guns weapons only; DLC lists are packed).
   For balance, `lua55 balance_report.lua` compares v2 with v1 (DESIGN.md, "Balance against v1").
4. Tick the weapon off in `ROADMAP.md`.
5. Have the owner test it in-game.

### Change `UpgradeCount`

The release count is 32 (DESIGN.md, "Levels"). To test with fewer levels, don't change the repo: deploy with
`.\deploy.ps1 -UpgradeCount <n>`. If the release count itself changes, regenerate all stubs afterwards. The generator doesn't delete stubs above the new count; remove them
if the count gets smaller, or leave them on purpose and say so.

### Support a commander

Follow DESIGN.md, "Commanders", and the survey in PLAN.md, step 5. Never copy a commander's code into the repo
(copyright): weapon-file changes are replayed from the commander's own files, list and script changes are extended
by this mod's own code. In `mods/commander-<x>/`:
- List the commander's overlay files of registered weapons (paths inside the game's data folder) in
  `CommanderOverlayFiles` in `lib/pregen_files.lua` and run `lua55 pregen_files.lua`: it writes the per-level files
  that replay them.
- `weapons/projectile_list.lua` / `weapon_list.lua`: extend the commander's named list changes to the level names.
- `commander.lua`: appended to the commander's script; `path` is this mod's root there.

Offline, only the list hooks are checked; weapon-file changes need an in-game round.

### Add a scaled stat

Add `Field = fn` to the right table in `Scaling` (`WeaponList`, `WeaponFile` or `ProjectileList`). If it's a weapon-file
global, `ApplyScaling` in `weapons/weapon_file_upgrade.lua` scales it (and the same field on each ammunition entry)
like the others; a field nested in a table needs its own handling there.

## Deploy for testing

The owner tests from the Steam Workshop folder (`...\steamapps\workshop\content\410900\1369514837`),
not the local Forts `data\mods` folder. Run `.\deploy.ps1` from this mod's folder.

## Reading the game log

See the repo-wide guide; this mod's Workshop id is `1369514837`. Line numbers in the log match the repo file after
`deploy.ps1`.

## Release

Publish nothing until v2 is feature complete; until then, commits and local deploys only
(`docs/adr/0001-v2-replaces-v1-only-when-feature-complete.md`). The release steps are in PLAN.md, step 6.
Keep `publishedfileid.lua` as it is: v2 replaces v1 on the same Workshop item.

## Known issues

- `overlays` replays other mods' overlay files (harpoon gets its default and decoy ammo from them). They are applied
  even if the overlay's mod is inactive (e.g. `dlc_harpoon_skirmish` in a campaign); Lua can't see which mods are active.
- Ammunition entries are scaled with `Scaling.WeaponFile` and their projectiles with `Scaling.ProjectileList`; runway aircraft
  (RoundsEachBurst 1 -> 3 at the top level) may need gentler scaling.
