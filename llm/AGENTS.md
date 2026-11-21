# Agent guide (repo-wide)

Instructions for LLM coding agents working anywhere in this monorepo of Forts mods. LLM-related material lives in
`llm/` (each `CLAUDE.md` only points to its `llm/AGENTS.md`). Each mod has its own `CLAUDE.md` and `llm/` for
mod-specific rules; read them when working in that mod.

## Repository layout

One folder per mod; each folder is a complete Forts mod (`mod.lua`, `publishedfileid.lua`, ...).

- `Indefinitely-Upgradeable-Weapons/` – v2 of the weapons mod, under active development. Has its own `CLAUDE.md`.
- `Indefinitely-Upgradeable-Weapons-Legacy/` – v1 of the weapons mod (same Workshop item, `1369514837`). v2 replaces it
  once feature complete.
- `Indefinitely-Upgradeable-Devices-Legacy/` – the devices mod (Workshop item `1363924614`).

## Environment

- Language: Lua 5.1 as embedded in Forts. No build system, no automated tests.
- Engine globals (`Weapons`, `Projectiles`, `FindWeapon`, `FindProjectile`, `InheritType`, `Log`, `L"..."`, `path`, ...)
  exist only in-game.
- `lua55` is the owner's local Lua 5.5 install for offline scripts; any stand-alone Lua with `io`/`os` works.
- The owner tests in Forts. When a change can only be verified in-game, say so; don't claim it works.
- Original files of the base game and DLCs are **not** in this repo. Don't guess their field names;
  ask, or point to what needs checking. DLC files are packed and unreadable: find their facts with a temporary `Log`
  and one round in-game, then remove the logging once the fact is recorded.

## How Forts loads mods

- A mod is a folder whose `mod.lua` holds the metadata (`Selectable`, `Priority`, `Category`, DLC flags).
- Mods don't replace game files. After Forts loads a base data file (e.g. `weapons/weapon_list.lua`),
  it runs every active mod's file at the **same relative path** in the same Lua environment.
  Mod files therefore change the global tables that already exist (`Weapons`, `Projectiles`, `Weapon` strings, ...).
- `path` is the folder of the mod whose file is currently running. Other mods are referred to by
  their paths: `mods/weapon_pack` (Tons of Guns), `mods/dlc1_weapons` (Moonshot), `mods/dlc2` (High Seas).
- A higher `Priority` in `mod.lua` makes a mod load later, after the mods it builds on.
- Forts' `dofile` ignores missing files silently.

## Reading the game log

After a launch, check `C:\Program Files (x86)\Steam\steamapps\common\Forts\users\<steamid>\log.txt`
(the owner's is `76561198059031497`; ignore the stale copy under `G:\SteamLibrary`). Forts rewrites it on every launch.
It is UTF-16 LE, so plain `grep` finds nothing. Convert it first:

```sh
iconv -f UTF-16 -t UTF-8 "/c/Program Files (x86)/Steam/steamapps/common/Forts/users/76561198059031497/log.txt" \
  | grep -niE "error|warn|<workshop id>"
```

Errors from a Workshop-deployed mod mention `workshop\content\410900\<workshop id>`. Line numbers in
`[string "..."]` messages refer to the deployed file.

## Commits

The owner commits; don't commit yourself. When a request that changed repo files is finished, end your reply with a
suggested commit message for the uncommitted changes (`git status`) in a code block: one short line, no body.
