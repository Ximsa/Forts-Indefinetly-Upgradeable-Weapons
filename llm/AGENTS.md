# Agent guide

Instructions for LLM coding agents working on this repository. LLM-related material lives in `llm/`
(the root `CLAUDE.md` only points here). The glossary (`GLOSSARY.md`) and decision records (`docs/adr/`) are for
people too and live at the repo root.

## Read first

- [GLOSSARY.md](../GLOSSARY.md) – the project's terms (level, step, tier, variant, v1, v2, feature complete, parity). Use these words.
- [PLAN.md](PLAN.md) – the agreed steps to feature complete, with a "Done when" for each. Start here to find the next piece of work.
- [DESIGN.md](DESIGN.md) – the goals and the rules for levels, balance, costs and scope
- [ARCHITECTURE.md](ARCHITECTURE.md) – how Forts loads mods and the pipeline this mod builds on top of it
- `lib/scalings.lua` – the registry; most changes start here
- [V1.md](V1.md) – v1's formulas, numbers and its commander and AI mechanisms. Read when tuning balance or adding commander or AI support.
- `docs/adr/` – decisions that are hard to undo, with their reasons

## Environment

- Language: Lua 5.1 as embedded in Forts. The repo has no build system and no tests. Outside the game, only
  `lib/check_lists.lua` runs the list hooks (against stubs and the readable base lists); weapon files only run in-game.
- Engine globals (`Weapons`, `Projectiles`, `FindWeapon`, `FindProjectile`, `InheritType`, `Log`, `L"..."`, `path`, ...)
  exist only in-game.
- The owner tests in Forts. When a change can only be verified in-game, say so; don't claim it works.
- Original weapon files of the base game and DLCs are **not** in this repo. Don't guess their field names;
  ask, or point to what needs checking.

## Conventions

- Style: 3 spaces of indentation in most files (`weapon_list.lua` uses tabs; match the file you're editing), `snake_case` locals,
  `PascalCase` globals/functions.
- Never edit an original weapon file's behaviour by copying it; always apply changes on top of it in `weapon_file_upgrade.lua`.
- New tunable numbers go in `lib/scalings.lua`, not into the hook files.
- Keep the `<name>_<level>` suffix convention for SaveNames, projectiles, sprites and stub files.

## Commits

The owner commits; don't commit yourself. When a request that changed repo files is finished, end your reply with a
suggested commit message for the uncommitted changes (`git status`) in a code block: one short line, no body.

## Common tasks

### Add support for a weapon

1. Add a `WeaponUpgrades` entry in `lib/scalings.lua` (put DLC weapons in the matching `if moonshot` / `if dlc2Var_Active` block).
   The `projectile` tree must include every child projectile that needs scaling.
2. Regenerate stubs and the AI file: `cd lib && lua55 pregen_files.lua` (it also writes `ai/ai.lua`; don't edit that by hand) (`lua55` is the owner's local Lua 5.5 install; any stand-alone Lua with `io`/`os` works).
3. Run the offline check: `cd lib && lua55 check_lists.lua` (base-game and Tons of Guns weapons only; DLC lists are packed).
   For balance, `lua55 balance_report.lua` compares v2 with v1 (DESIGN.md, "Balance against v1").
4. Tick the weapon off in `README.md`.
5. Have the owner test it in-game.

### Change `UpgradeCount`

The release count is 48 (DESIGN.md, "Levels"). To test with fewer levels, don't change the repo: deploy with
`.\deploy.ps1 -UpgradeCount <n>`. If the release count itself changes, regenerate all stubs afterwards. The generator doesn't delete stubs above the new count; remove them
if the count gets smaller, or leave them on purpose and say so.

### Add a scaled stat

Add `Field = fn` to the right table in `Scaling` (`WeaponList`, `WeaponFile` or `ProjectileList`). If it's a weapon-file
global.

## Deploy for testing

The owner tests from the Steam Workshop folder (`...\steamapps\workshop\content\410900\1369514837`),
not the local Forts `data\mods` folder. Run `.\deploy.ps1` from the repo root.

## Reading the game log

After a launch, check `C:\Program Files (x86)\Steam\steamapps\common\Forts\users\<steamid>\log.txt`
(the owner's is `76561198059031497`; ignore the stale copy under `G:\SteamLibrary`). Forts rewrites it on every launch.
It is UTF-16 LE, so plain `grep` finds nothing. Convert it first:

```sh
iconv -f UTF-16 -t UTF-8 "/c/Program Files (x86)/Steam/steamapps/common/Forts/users/76561198059031497/log.txt" \
  | grep -niE "error|warn|1369514837"
```

Errors from this mod mention `workshop\content\410900\1369514837`. Line numbers in `[string "..."]` messages
refer to the deployed file, which matches the repo file after `deploy.ps1`.

## Release

Publish nothing until v2 is feature complete; until then, commits and local deploys only
(`docs/adr/0001-v2-replaces-v1-only-when-feature-complete.md`). The release steps are in PLAN.md, step 6.
Keep `publishedfileid.lua` as it is: v2 replaces v1 on the same Workshop item.

## Known issues

- `overlays` replays other mods' overlay files (harpoon gets its default and decoy ammo from them). They are applied
  even if the overlay's mod is inactive (e.g. `dlc_harpoon_skirmish` in a campaign); Lua can't see which mods are active.
- `control` ammo only exists when its ammo mod is active; otherwise `projectile_list.lua` logs `Could not find projectile with savename control` (harmless).
- Ammunition entries are scaled with `Scaling.WeaponFile` and their projectiles with `Scaling.ProjectileList`; runway aircraft
  (RoundsEachBurst 1 -> 3 at the top level) may need gentler scaling.
