# Indefinitely Upgradeable Weapons

Keep upgrading your weapons long after the game would let you stop. Select a built weapon and press its upgrade button to reach the next level, e.g. "Cannon Level 2", and keep going.

Each level deals more damage, fires more rounds or for longer, and reloads faster, while range, splash and hitpoints grow more slowly. Each level also costs more than the one before, so a high level is a real investment. Upgraded weapons keep their level when they change tier or form, and their projectiles keep it when they catch fire or lose their armour. Each level has its own tint.

All weapons of the base game, Tons of Guns, Moonshot and High Seas are supported; DLC weapons require the DLC. Commander abilities work on upgraded weapons as on the originals, except that Overdrive speeds up level upgrades less than normal upgrades. The AI shoots down upgraded projectiles and uses upgraded anti-air weapons. Weapons from other mods are not upgradeable, saves from earlier versions of the mod do not carry over, and loading a match takes a little longer.

## Development

The mod is written in Lua 5.1, as embedded in Forts. The registry of supported weapons, and every tunable number, is in `lib/scalings.lua`. The progress towards the next release is in `ROADMAP.md`; guides for adding weapons, projectiles and commanders are in `docs/`.

### Build

The level weapons are small generated files. After changing the registry, regenerate them and run the offline check from `lib/`, using any stand-alone Lua with `io` and `os` (here `lua55`):

```sh
cd lib
lua55 pregen_files.lua    # writes weapons/<w>/<w>_<level>.lua and the commander sub-mod files
lua55 check_lists.lua     # loads the base game's and Tons of Guns' lists with this mod's hooks and reports problems
lua55 balance_report.lua  # optional: compares the scaling with version 1 (dump/balance_<date>.txt)
```

### Deploy

`deploy.ps1` copies the mod into its Steam Workshop folder, where Forts loads it:

```powershell
.\deploy.ps1                   # all levels (UpgradeCount in lib/scalings.lua)
.\deploy.ps1 -UpgradeCount 2   # fewer levels, for faster loading while testing
```

The game log is in `Steam\steamapps\common\Forts\users\<steamid>\log.txt`. It is encoded in UTF-16, so convert it before searching it, e.g. `iconv -f UTF-16 -t UTF-8 log.txt | grep -i error`.
