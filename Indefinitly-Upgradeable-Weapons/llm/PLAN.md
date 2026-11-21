# Plan: v2 to feature complete

Agreed with the owner on 2026-11-11. Terms (level, step, tier, variant, v1, v2, feature complete, commander parity,
AI parity, overlay, replay) are defined in [GLOSSARY.md](../GLOSSARY.md). The rules the work must follow are in
[DESIGN.md](DESIGN.md). v1's numbers and mechanisms are in [V1.md](V1.md).

**Status (2026-11-21): steps 1 to 5 done (every commander checked in-game 2026-11-21). Upgrade count lowered to 32 (loading time); a sub-quadratic step curve makes level 2 = v1 level 2 and level 33 = v1 level 64 (DESIGN.md, "Levels"). The High Seas round passed in-game 2026-11-21: every High Seas weapon built**
**and upgraded with a clean log, a level `turret2` switches to `turret2_focus_<level>`, level flak shoots down level**
**shells, level cannons through level firebeams catch fire and keep their level, damaged level warheads keep theirs.**
**`ai/ai.lua` is hand-written and loads the registry (it has `path`, `dofile` and `Log`).**
**Step 5 (commanders): design agreed, 5.1 (in-game facts) done 2026-11-12; 5.2 (survey) recorded below; Buster, Moonshine**
**and Phantom from probe rounds (2026-11-21); still open: their overlay cells (`?`) and the open facts under the table.**
**5.3: generator done; Scattershot done (in-game 2026-11-21: clean log, level AP sniper fires 2 shots under the**
**power, level weapons get the focus icon). Seep done (in-game 2026-11-21: level armoured**
**rockets and missiles, AI anti-air fires at them). Shockenaugh done (in-game 2026-11-21). Buster in code (2026-11-21): no weapon-file overlays (a probe found none;**
**Forts' dofile ignores missing files silently), level names added to its ProjectilesToUranium; done (in-game 2026-11-21). Moonshine done (in-game 2026-11-21: level**
**snipers EMP under the power; no weapon files and no shield ForcedReflection, per probe). Phantom done (in-game 2026-11-21: level magnabeams damage and burn). Architect needs no sub-mod (level weapons
**have Prerequisite "upgrade", which its build-time perk skips); Overdrive done (both in-game 2026-11-21). Hurricane done (in-game 2026-11-21). Firebird done (in-game 2026-11-21). Warthog done (in-game 2026-11-21). Eagle Eye done (in-game 2026-11-21). Pinchfist and Spook need no sub-mod (their changes reach the levels; folders
**with .gitkeep), done (in-game 2026-11-21). Armourdillo in code (2026-11-21): `minigun2` is a registry entry (`commander` field,**
**skipped offline). First round: `common/` runs after this mod's list hook for every team, so levels made only in the**
**sub-mod gave "inconsistent device counts" and missing level head sprites. Now its levels and the level minigun →**
**same level AP minigun upgrade come from `RegisterApplyMod` callbacks in this mod's own list hooks (every team);**
**active AP sniper penetration copied to level `sniper2`; cosmetic AP sniper FireEffect left out. Round 2 (2026-11-21):**
**loads with a clean log, both teams 1225 device types. Armourdillo done (in-game 2026-11-21).**

## Working rules

- Work the steps in order. A step is done only when its "Done when" holds.
- Publish nothing until v2 is feature complete (`docs/adr/0001-v2-replaces-v1-only-when-feature-complete.md`).
  Commits and local deploys only.
- Each change that affects the game ends with `.\deploy.ps1`, a round in Forts by the owner, and a check of the
  game log (repo-wide `llm/AGENTS.md`). Say what was verified in-game and what was not.
- DLC files are packed and unreadable. Find their facts with a temporary `Log` and one round in-game, as was done for
  harpoon; remove the logging once the fact is recorded.
- When a step needs a decision that isn't written here or in DESIGN.md, ask the owner.

## Step 1: core rules

Changes that affect every level weapon, so they come first.

1. **Upgrade count 48.** Set `UpgradeCount = 48` in `lib/scalings.lua`, run `cd lib && lua55 pregen_files.lua`.
   Done when every `weapons/<name>/` folder holds exactly the stubs `_2` .. `_49`. (Since 2026-11-21: 32, stubs `_2` .. `_33`.)
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
deploy, owner tests, tick the roadmap (`ROADMAP.md`).

All rows are registered and ticked; what's left is the test round in the status above.

| Roadmap name | SaveName(s) | Notes |
|---|---|---|
| Runway (Mk I and Mk II) | `runway`, `runway2` | `runway2` is the tier upgrade and uses the same projectile tree |
| Deck Gun | `turret`, `turret2`, `turret2_focus`, `turret3`, `turret3_focus` | all five get levels; the focused forms are variants (to confirm in-game) |
| Energy Dome | `dome` (projectiles `dome`, `dome_barrier`) | grows by firing longer (`DomeScaling`, owner 2026-11-11) |
| Marine Swarm | `subswarm` (projectile `missile`) | |
| Marine Warhead | `sublauncher` (projectile `missile2`) | |
| Orbital Laser | `orbital_laser`, `orbital_laser2` | level markers order level beams through the wrapped beam source |
| Harpoon | `harpoon` | had levels before step 3; ammunition from overlays |

For each weapon, record: the owning mod (the log's "Activating mod" lines), whether the original file already has
`Projectile`, `Sprites` and `dlc2_Ammunition`, and which overlays add to it (list them under `overlays`).

Done when every row is ticked in the roadmap and the game log is clean with all of them built and upgraded.

## Step 4: AI parity and transformed projectiles

1. **AI parity**, as v1 did it, in the hand-written `ai/ai.lua` (names from the registry). For every level, it copies the
   `ShootableProjectile` entry of each registered projectile (with its transformed versions) to the level projectile,
   and for each registered weapon that has anti-air settings it copies `data.AntiAirErrorStdDev`,
   `data.AntiAirOpenDoor`, `data.AntiAirFireProbability` and `AntiAirFireProbabilityHumanAssist` to the level weapon.
   Nothing else: copying more (the inner per-projectile tables of `AntiAirOpenDoor`, target priority lists, the
   `data` tables recursively) made the game hang (2026-11-11).
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
which roadmap name before starting.

The design was agreed on 2026-11-12 and is in DESIGN.md, "Commanders": one hand-written sub-mod per commander,
copied changes applied after level scaling, gameplay changes only, and the Overdrive exception.

1. **In-game facts first** (done 2026-11-12; see "Commander loading" under "Facts collected so far"):
   does `mods/commander-<x>/mods/1369514837/weapons/...` still apply to a Workshop-loaded mod; what `path` is inside
   such an overlay; whether commander list hooks (`RegisterApplyMod`) run before or after this mod's list hooks;
   whether commander scripts have `dofile`.
2. **Survey.** For each commander, list what it changes and which registered weapons that touches: weapon-file
   overlays, list hooks (looping over all, or naming SaveNames), commander-only weapons, and `commander.lua` and
   `ai/ai.lua` files that name weapons. Work from the current commander files; v1 is old and only a hint. Buster and
   Moonshine are packed: start from v1's sub-mods and let a temporary `Log` decide where they differ. Phantom: from
   the log only. Record the table here.
3. **Generator.** `lib/pregen_files.lua` writes the per-level files that replay the overlay paths listed by hand in
   `CommanderOverlayFiles` (DESIGN.md; no commander code in the repo, no game files read). Done 2026-11-21.
4. **Order.** Scattershot first, then the other nine v1 covered (Seep, Shockenaugh, Buster, Moonshine, Overdrive,
   Hurricane, Firebird, Warthog, Armourdillo), then Eagle Eye, Architect, Pinchfist, Spook, Phantom.
   Commander-only weapons (e.g. Armourdillo's armour-piercing minigun) get levels as part of their commander.

Done per commander when, in a skirmish with that commander, a level-2 and a level-33 weapon show the same passive
and active effects as their base weapon (sprite swaps excepted), and the commander is ticked in the roadmap.
Overdrive instead: a level-2 upgrade takes about 68 % and a level-33 upgrade about 93 % of its normal time, and
downgrades work at every level.

### Survey (2026-11-12, from the current files in `data\mods\commander-*`)

Weapons by SaveName (file → SaveName: `snipertower` sniper, `sniper-ap` sniper2, `mortar-incendiary` mortar,
`mortar` mortar2, `missileswarm` missile, `missilelauncher` missile2, `beamlaser` laser, `20mmcannon` cannon20mm).
"Overlay" = weapon-file change to copy into the sub-mod; "named" = list hook or script that names base SaveNames
(misses levels); "all" = reaches levels by itself (loops over everything, `weapons/weapon.lua` hooks, or applies only
to weapons that aren't upgrades). Sprite swaps are left out (DESIGN.md).

| Commander (folder) | Overlays | Named list hooks | Scripts / AI / other | Reaches levels by itself |
|---|---|---|---|---|
| Scattershot (`bpo-scattershot`) | machinegun (+1 round, HeatPeriod, ±8° arc; active CoolPeriod), minigun +1, cannon20mm +1 (active: 5 projectiles per round, spray), flak +1, shotgun +4 with spread, buzzsaw +1, smokebomb +1, rocket (active: `RoundsEachBurst = 3`, fire cost ×1.5), sniper and sniper2 (spread ×2; active: +1 round, reload ×1.5 / ×1.7, `Sprites[3]` reload frame) | projectile `flak` shrapnel 18 | `WeaponsToMark` (machinegun, minigun, sniper, sniper2) | active spread `weapon.lua`; trajectory preview |
| Seep (`bpo-seep`) | missile, missileinv (FireDelay 2; active `Projectile = "armouredmissile"`), missile2, missile2inv (FireDelay 2), rocket, rocketemp (energy fire cost ×0.9; active armoured projectile) | `damagedmissile2` splits into 15 `missile`; active: `rocket`, `rocketemp`, `flamingrocketemp` erratic; `smoke` MaxAge, FieldRadius | `WeaponsToMark` (4 missiles); `common`: `MakeArmouredVersion` missile, rocketemp, AI `ShootableProjectile` armoured | thrust loop |
| Shockenaugh (`bpo-shockenaugh`) | cannon20mm (active: fires `cannon` with cannon stats and costs), firebeam (active: fires `laser` with its own beam table and costs), smokebomb `DestroyProjectile = nil` | weapon `buzzsaw` MaxWeaponGroupSize nil | AI: `AntiAirAddContextButton`, `data.AntiAirPower` for shotgun; rules `MaxWeaponGroupSize = 4` | – |
| Architect (`da-builder`) | – | – | – | build time ×0.25 only for weapons without `Prerequisite == "upgrade"` (levels excluded, as tier upgrades) |
| Overdrive (`da-overclocker`) | – | – | – | downgrades and halved upgrade `BuildDuration` (nerf: DESIGN.md) |
| Hurricane (`da-speed-demon`) | machinegun (`HeatPeriod = 1.2`, RoundPeriod −0.04), minigun, cannon20mm, flak, buzzsaw (RoundPeriod −0.04), mortar, mortar2 (`HurricaneActiveReloadFactor = 0.75`), rocket (reload +⅓ × activeValue) | – | `WeaponsToMark` (14 names) | active reload `weapon.lua`; build, scrap and repair loop |
| Firebird (`ee-fireman`) | machinegun (active `HeatPeriod = 1.2`), firebeam (`BeamDuration = 3.2`, `GenerateBeamTable`) | callback: `mortar`, `cannon`, `cannon20mm`, `flaming*` (7), active `sniper`, `sniper2`, `mortar2`, `missile2`, `damagedmissile2`; its active loop over all projectiles excludes base `sniper2`, `cannon`, `mortar` by reference, so their levels wrongly get the generic radius | `WeaponsToMark` (8 registered) | active incendiary loop |
| Warthog (`ee-heavy-weapons`) | ReloadTime −2, range ×1.2, MinVisibility: cannon, cannon20mm, laser (active beam ×activeValue), howitzer, turret (5), orbital_laser (2); missile, missile2 ReloadTime −2; mortar2 −0.54 | callback: `ProjectilesToAffect` (global) | `WeaponsToMark`, `WeaponsWithSecondChance` | thrust loop |
| Eagle Eye (`ee-marksman`) | machinegun (kickback ×0.5; active `RoundsEachBurst = 9`, RoundPeriod, `HeatPeriod = 1.9`), minigun (`RoundsEachBurst = 11`, reload + FireDelay; active fire cost 600 / 30, splash), mortar, mortar2 kickback, sniper, sniper2 reload ×0.8, `HasLaserSight` on these and cannon, cannon20mm, flak, rocket, rocketemp, shotgun, harpoon | weapon `sniper` build time ×0.5, `sniper`/`sniper2` group size and grouping; callback `ExplosiveProjectileDamageFactor` (global, keyed minigun, sniper, sniper2) | `WeaponsToMark`, `WeaponsWithSights` (tip only); AI `AntiAirAddContextButton` minigun; `weapon.lua` gives a `ReloadBank` when `ReloadTime >= 9` | drag loop |
| Pinchfist (`iba-miser`) | – | – | – | fire cost `weapon.lua`, reclaim loop, icon on every weapon type |
| Spook (`iba-spy`) | – | – | – | nothing weapon-specific |
| Armourdillo (`iba-turtle`) | sniper2 active FireEffect (cosmetic) | tier upgrade `minigun` → `minigun2`; active `sniper2` and `minigun2` projectile penetration | `common`: commander-only weapon `minigun2` (AP minigun) with projectile and flaming version | repair cost loop |
| Buster (`cf-buster`, packed; probe 2026-11-21) | none (probe: no file of a registered weapon changes anything; its power swaps projectiles in flight via `ProjectilesToUranium`) | list hook: weapon `sniper2` `SpotterFactor` 0 → 1; projectiles `minigun`, `shotgun` get `armour` and `door` DamageMultiplier 1.1; new projectiles `uranium<name>` for bomb, cannon, cannon20mm, damagedmissile2, flamingdamagedmissile2, fireball, howitzer, missile2, flamingmissile2, mortar2, paveway, rocket, rodsfromgod, turret, plus `shrapnel-buster` (no level versions). Callbacks: only impact effects and trails on those base projectiles (cosmetic) | v1: `WeaponsToMark` | no: all of it misses levels. In-game 2026-11-21: with the power active, level cannons fire their normal level shells, not uranium ones; 5.3 must give level weapons `uranium<name>_<level>` shells under the power |
| Moonshine (`cf-moonshine`, packed; probe 2026-11-21) | none (probe: no file of a registered weapon changes anything) | list hook: projectiles `rocketemp`, `flamingrocketemp` `EMPRadius` 150 → 180, `EMPMissileReturnToSource`. Active callback, named: `sniper`, `sniper2` (and flaming) `EMPRadius = 0`, `sniper` `ProjectileMass` → 1, impact effects. v1's shield `ForcedReflection` is gone (probe: none) | – | active callback: every projectile gets EMP (`EMPDuration = 10`, `EMPRadius` from its splash radius, so levels get the scaled radius), `PassesEnemyPortals = false`, EMP impact effects; levels included. The named parts miss levels |
| Phantom (`cf-phantom`, packed; probe 2026-11-21) | magnabeam (`mods/dlc1_weapons/weapons/magnabeam.lua`: `BeamDuration`, beam penetration thresholds, `PhantomFactor`) | list hook: projectile `magnabeam` `ProjectileDamage` 0 → 60, incendiary (Phantom's own, second probe); `missile2` witch trail (cosmetic) | – | callbacks: every weapon gets cloak fields (`Cloaked`, `CanMove`, `HasDummy`, `CloakRecoveryTime = 10`, `CloakLostOnFiring`, `CloakLostOnDamage = false`; active: `Silenced`), levels included. `magnabeam` misses levels |

Probe notes (2026-11-21): a `weapons/weapon.lua` in this mod's sub-mod `mods/commander-<x>/` never ran (no log line in a
Buster vs. Phantom round). The `transfer` DamageMultiplier entries (buzzsaw, howitzer, minigun, paveway, turret, ...) and
`ScrapPeriod` → 2 show up under every commander, so they come from other mods, not from a commander.

Open facts for the in-game check of each commander: whether `weapons/weapon.lua` hooks and `common/` lists reach level
weapons (and whether `common/` runs before this mod's list hook, which decides where `minigun2` gets its levels).

## Step 6: finish

1. Run the balance report again with every weapon in it; the owner judges new outliers.
2. Measure the match load time with everything active (`Loading took` in the game log). About one minute is
   acceptable; raise it with the owner if it is clearly more.
3. Release: `ItemVersion` above v1's last (the old v1 copy says 51), release notes (v1 saves don't carry over;
   third-party weapons are gone; levels now run 2..33), README (the Workshop description) and roadmap complete, known issues in AGENTS.md cleaned up.
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
- Transformed projectiles in the game: `flaming<name>` (MakeFlamingVersion, via a firebeam), `damagedmissile2` (the Skirmish
  mod, when a warhead is hit) and its `flamingdamagedmissile2`, `armoured<name>` (MakeArmouredVersion; armoured missiles
  turn into the plain one when hit; fired only under commanders).
- AI parity is limited to what v1 did (owner, 2026-11-11): `ShootableProjectile` and the four anti-air tables. Copying
  every name-keyed AI table (all of `data` two deep, about 20 global tables, the target priority lists) made the game
  hang.
- Forts gives mods no `loadfile` (a temporary log that used it broke `weapon_list.lua` for a round).
- The AI tables are keyed by weapon or projectile SaveName, so no level weapon or projectile is in them today.
- Commander loading (probe round with Scattershot vs. an AI Phantom, 2026-11-12):
  - The sub-mod layout works for the Workshop mod: `mods/commander-bpo-scattershot/mods/1369514837/weapons/minigun/minigun_2.lua`
    ran after the level stub, in the same globals (`UpgradeLevel` and the scaled stats are visible). It runs only in the
    passes for the commander's own team (inactive and active), not for the other team's.
  - `path` is `<mod root>/mods/commander-<x>` in sub-mod overlays and sub-mod list hooks, but `<mod root>` in a sub-mod
    `commander.lua`. Inside `RegisterApplyMod` callbacks, even this mod's own, `path` is the commander's
    (`mods/commander-<x>`, or `.` in the first pass), so callbacks must not build paths from it.
  - Lists are loaded once per team and commander state (inactive, then active); weapon lists get one more pass first
    (sprites). `active` is nil in this mod's list hooks and false/true in sub-mod list hooks and callbacks.
  - Order per pass: this mod's list hook → the commander's own list hook → this mod's sub-mod list hook → `RegisterApplyMod`
    callbacks. So a commander's top-level change to a named base projectile misses the level projectiles (Scattershot
    sets `flak` shrapnel to 18, `flak_2` stays 12); its loops over all weapons or projectiles, top-level or in callbacks,
    reach them (level weapons exist by then). The sub-mod list hook sees the commander's change and can copy it.
  - Commander scripts load before the lists; a sub-mod `commander.lua` is appended to the commander's script
    (`OnActivation` already defined) and has `dofile`. `teamId` is nil at load time.
  - Phantom's folder is `commander-cf-phantom`.
  - A commander's `common/` lists (Armourdillo's AP minigun) run for every team, after this mod's list hook (2026-11-21).
    Every team must end with the same weapon list ("inconsistent device counts" otherwise), and level weapons missing in
    the sprite pass get no sprites. `RegisterApplyMod` callbacks from this mod's list hooks may add weapons and
    projectiles, and run in every pass including the sprite pass.
  - Active abilities that act on any selected device (Scattershot's trajectory preview) already reach level weapons.
- Without High Seas active (owner, 2026-11-21): a match with High Seas owned but not active loads with a clean log; the
  High Seas registry entries are skipped quietly. Not yet tested: an account that doesn't own the DLCs.
