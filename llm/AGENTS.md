# Agent guide

Instructions for LLM coding agents working on this repository. All LLM-related material lives in `llm/`;
don't put agent files anywhere else (the root `CLAUDE.md` only points here).

## Read first

- [ARCHITECTURE.md](ARCHITECTURE.md) – how Forts loads mods and the pipeline this mod builds on top of it
- [DESIGN.md](DESIGN.md) – the balance philosophy and the scaling curves
- `lib/scalings.lua` – the registry; most changes start here

## Environment

- Language: Lua 5.1 as embedded in Forts. The repo has no build system and no tests, and nothing can run the mod outside the game.
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

## Common tasks

### Add support for a weapon

1. Add a `WeaponUpgrades` entry in `lib/scalings.lua` (put DLC weapons in the matching `if moonshot` / `if dlc2Var_Active` block).
   The `projectile` tree must include every child projectile that needs scaling.
2. Regenerate stubs: `cd lib && lua55 pregen_files.lua` (`lua55` is the owner's local Lua 5.5 install; any stand-alone Lua with `io`/`os` works).
3. Tick the weapon off in `README.md`.
4. Have the owner test it in-game.

### Change `UpgradeCount`

Regenerate all stubs afterwards. The generator doesn't delete stubs above the new count; remove them
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

Bump `ItemVersion` in `itemversion.lua`. Don't change `publishedfileid.lua`.

## Known issues (found 2026-11-11, not yet fixed)

- `UpgradeAmmunition` indexes `v.Projectile` (a string) with a table (`current_upgrade.ammunition`),
  which always returns `nil`, so it currently never renames anything.
- `HandleInvertedType` builds its path as `path .. "weapons/"` (no slash), while other files use `path .. "/weapons/"`.
- `weapons/strings.lua` forces `moonshot = true` but not `dlc2Var_Active`.
