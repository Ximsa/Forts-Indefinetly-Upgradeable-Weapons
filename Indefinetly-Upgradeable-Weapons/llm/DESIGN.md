# Design

The design goals behind the mod and the rules its balance follows. For how it works, see [ARCHITECTURE.md](ARCHITECTURE.md).
Terms are defined in [GLOSSARY.md](../GLOSSARY.md).

Rules marked **(planned)** were agreed with the owner on 2026-11-11 and are not in the code yet; [PLAN.md](PLAN.md)
says in which step they are built. Remove the mark when the code follows the rule.

## Goal

Let every weapon keep upgrading well beyond the game's own upgrades, so that late-game metal and energy
always have something to be spent on. Each level should be noticeably stronger, but never so much stronger
that a few levels stop being affordable or a single weapon breaks the match.

## Principles

1. **Data-driven.** Every number lives in `lib/scalings.lua`. Supporting a new weapon should only
   need a new `WeaponUpgrades` entry (plus generated stubs), not new code.
2. **Never edit original files.** The mod re-runs the original weapon file and changes the result,
   so balance changes to the base game or other mods carry over automatically.
3. **Scale only the fields that exist.** A scaling function is applied only if the field is present,
   so a single table works for every weapon type.
4. **Make levels visible.** Each level gets its own sprite tint and a "Level N" name.
5. **Work alongside other mods.** The high load priority and `CompatibleGroupTypes` let level weapons
   replace and group with their base weapon.

## Levels

- The base weapon is level 1. Level upgrades are levels 2 and up; the step is `UpgradeStep(level)` = (level − 1)^`StepPower`.
- **The release upgrade count is 32** (levels 2..33; owner, 2026-11-21: 48 made loading slow). The step
  curve (owner, 2026-11-21) is sub-quadratic, `StepPower = log 63 / log 32` ≈ 1.195: the first upgrade is one step,
  like v1, and level 33 is step 63, v1's top level 64. The curves tuned per step
  (below) still hold; only the steps each level reaches moved (level 10 ≈ step 14, level 16 ≈ 25.5, level 24 ≈ 42.5). The repository always holds 32. Lower counts are only for
  faster loading while testing (`.\deploy.ps1 -UpgradeCount <n>` deploys fewer).
- **A level's stats don't depend on the upgrade count.** Raising the count only adds levels on top. The sprite
  tint is the one exception, because it is only cosmetic.
- **Every tier gets levels**, not only the last weapon of a chain.
- **Variants keep their level**: a level weapon's tier upgrade, ceiling-mounted form or mode switch (such as the
  deck gun's focused form) leads to the same level of the other weapon. The game links weapons only through
  `Upgrades` and `InvertedType`, so a mode switch is a tier upgrade (the deck gun's focused form uses the upgrade
  effect; to confirm in-game, PLAN status).
- **Transformed projectiles keep their level** (GLOSSARY.md, "Transformed projectile"): a level projectile that the
  game sets on fire, damages or splits becomes the same level of the resulting projectile. Every projectile in a
  registry tree gets its existing `flaming…`, `damaged…` and `armoured…` versions as children
  (`TransformedProjectilePrefixes`); a reaction in a transformed version that turns it back (a shot-down armoured
  missile becomes the plain one) leads to the same level of the plain one. Buster's `uranium…` versions, which it
  creates after this mod's list hook, get their levels in its sub-mod.
- **Other projectiles react to a level projectile as to its base**: a reaction keyed by SaveName
  (`Effects.Impact["firebeam"]`: a shell catches fire) also applies to every level of that projectile, so a level
  firebeam sets shells on fire. Fixed 2026-11-21 after the High Seas test round.

## Scaling curves

`SecondaryGrowScale = 0.15` is the growth rate of the secondary stats. The stats that set power and cost have their own
rates, tuned against v1 (see below). With `L` = step:

| Curve | Formula | Used for |
|---|---|---|
| None | `v` | build time, fire speed minimum, heat/cool periods, drag, beam damage multiplier, ... |
| Fractional power | `v · (1 + g·√L)` | splash damage and radius, hitpoints, mass, range, impact, damage bonuses |
| Linear | `v · (1 + g·L)` | direct damage (`DamageGrowScale`), rounds per burst and beam duration (`RoundsEachBurstGrowScale`), EMP duration, production/storage |
| Sub-quadratic | `v · (1 + g·L^p)`, p = `CostPower` | build costs (`BuildCostGrowScale`), fire costs (`FireCostGrowScale`) |
| Geometric decay | `v · d^L` | reload time (`ReloadDecay`), round period and spread (0.98 / 0.99) |

The values: `DamageGrowScale = 0.125` (v1's rate), `RoundsEachBurstGrowScale = 1/24`,
`ReloadDecay = 0.98`, all three set by the owner (2026-11-11); `CostPower = 1.6`, `BuildCostGrowScale = 0.32` and
`FireCostGrowScale = 0.045`, tuned (2026-11-21).

The reasoning:

- **Damage grows linearly, other stats grow with √L.** Damage per shot is the main thing a player pays for.
  Splash radius, range and similar stats work together with each other (and with area), so they grow
  more slowly to avoid snowballing.
- **Costs grow faster than power** (`L^1.6`), so each level becomes less efficient and players can't gain an
  advantage just by stacking levels.
- **Damage grows at v1's rate** (`0.125` per step) and **reload times keep shortening** at `ReloadDecay = 0.98`
  (×0.63 at level 24, ×0.38 at 49), both set by the owner on 2026-11-11. Together with rounds per burst, power
  therefore runs ahead of v1 (see below); only the costs are tuned.
- **Rounds per burst** grows linearly at `1/24` (double by step 24), chosen by the owner so that 1-round weapons get
  a second round (step 24, level 17) and a third (step 48, level 33) within a real battle. It moves in whole rounds, which makes power
  jump at those steps; that is why balance is fitted only up to step 23.
- **Beam weapons** don't get more rounds; their `BeamDuration` grows at the same rate instead, and their
  `BeamDamageMultiplier` stays the base value, so a beam's damage grows through projectile damage and duration like
  any other weapon's. Their energy fire cost per shot is scaled like any other fire cost.
- **Energy Dome** (owner, 2026-11-11) grows by firing longer: it keeps firing bolts every `RoundPeriod` (0.04 s) for
  the whole burst, so its rounds per burst grows at twice the general rate (50 → 150 at step 24, 250 at step 48) while its round period, size
  (fire speed) and shape (spread, `FireStdDev`/`FireStdDevAuto`) stay; the barrier's own lifetime (`MaxAge`) didn't make the dome last visibly longer. Reload and hitpoints
  follow the normal rules; its `build_cost_factor` is 0.5 (owner: it was underwhelming for its cost). Per-weapon rules like this live in the registry's `scaling` field (`DomeScaling`).
- **Orbital Laser** (2026-11-11): a level laser's marker orders the same level of beam, whose damage (its `BeamDamage`
  function) grows at the damage rate and whose duration grows like beam duration.
- **Fire angle** widens by `L/3` degrees on each side.
- **Numbers shown to the player** (costs, hitpoints, mass) are rounded to 3 significant digits (`Significant3`).
- **High Seas ammunition** carries its own stats, which override the weapon's. They are scaled with the same
  rules as the weapon, and their projectiles like any other projectile.

## Balance against v1

v1 is the reference for how much power a given spend buys. Its numbers are in [V1.md](V1.md). The comparison is
`lib/balance_report.lua` (`lua55 balance_report.lua [tune]` from `lib/`; output in `dump/balance_<date>.txt`).

- **Balance is per step: v2 at step N − 1 should roughly match v1 level N.** v2 reaches that step at the level
  whose `UpgradeStep` is N − 1 (v1 level 2 = v2 level 2, v1 level 24 ≈ v2 level 15, v1 level 64 = v2 level 33). The step curve is the owner's
  knob for how many steps each level is worth, for power and cost alike; the report compares per step, so it doesn't change the tuning.
- **What is compared.** Power is direct damage × rounds per burst (× beam duration for beams) ÷ reload time, as a
  multiple of the base weapon. Spend is the total metal to reach a level, with energy reported next to it. Fire cost
  per point of damage is a second check. Range, splash, hitpoints and accuracy are reported but not tuned to v1.
- **The curve shapes don't change.** Tuning only adjusts `CostPower`, `BuildCostGrowScale` and `FireCostGrowScale`
  (the owner set `DamageGrowScale`, `RoundsEachBurstGrowScale` and `ReloadDecay`).
- **`SecondaryGrowScale` stays 0.15**, so the secondary stats don't move.
- **"Roughly match" is measured on average over v1 levels 2..24 (steps 1..23)**, the last level before 1-round weapons get a second
  round (owner, 2026-11-11): the jump in whole rounds distorts the fit too much. Levels above 24 are reported, not
  fitted. It is an average, not one level, because the shapes differ (v1's spend grows with the square of the level).
  **Prices follow firepower** (owner, 2026-11-21): the build cost is fitted to v1's metal spent per multiple of base
  power (spend ÷ power), not to the spend alone, so a weapon whose power grows faster than in v1 costs more.
  The tuner fits `CostPower` and `BuildCostGrowScale` to the average over all weapons, then each weapon's
  `build_cost_factor` (weapons without damage, smokebomb and magnabeam, by spend).
- **Per-weapon corrections go only through `build_cost_factor`**, set from the tuner's suggestions (2026-11-21). Weapons that stay far from v1, and weapons v1
  never had, are listed in the balance report for the owner to judge.

Result of the 2026-11-21 tuning (averages over levels 2..24, all 13 weapons both versions have): power 46 % (not
tuned), metal per power 11 %, fire cost per damage 24 %. Cannon (by step; v1 level N = step N − 1): level 10 v1 2.3×
base DPS for 8,100 metal / v2 2.6× for 9,135; level 24 v1 4.8× for 30,000 / v2 6.2× for 37,800; level 49 v1 11.3× for
101,700 / v2 55× for 121,100; level 64 (v2's top, level 33) v1 17.8× for 164,700 / v2 95× for 186,100. Above the
second round (step 24) power jumps but price doesn't, so the top is cheap for its power.

## Costs

- A level's build cost is `BuildCostScale(base · build_cost_factor, L)`.
- The price of a level upgrade from step `L-1` to `L` is the **difference** between the two build costs, so
  upgrading step by step costs the same as building the higher level directly.
- The price of a tier upgrade at a level is the build-cost difference between the two level weapons, never below
  the game's own price for that tier upgrade. The game prices its tier upgrades the same way.
- `build_cost_factor` adjusts weapons whose base cost doesn't match their value at high levels
  (e.g. buzzsaw ×3; flak, magnabeam and energy dome ×0.5; machinegun and minigun ×1.2; incendiary mortar ×0.75).
- **Upgrade time** is entered by hand per weapon in the `WeaponUpgrades` registry (`upgrade_time`, used as the level
  weapons' `BuildTimeComplete`): v1's value where v1 had the weapon, else the weapon's reload time. Without it, a level
  upgrade takes the base weapon's full build time (110 s for the cannon, against 26 s in v1).

## Visual identity

The tint of the level sprite is
`(1 - |sin(1.5πt)|, 1 - |sin(0.5πt)|, 1 - |sin(4.5πt)|)` with `t = L / UpgradeCount`.
This means the colour depends on `UpgradeCount`: changing the upgrade count changes every level's colour.

## Scope

- **Weapons:** every base-game and DLC weapon (vanilla, Tons of Guns, Moonshot, High Seas including the orbital
  laser), plus weapons that only exist under a commander. Third-party weapons that v1 supported (Tanya's,
  Big Friendly Cannon, AA Laser, Cannon Cannon) are out.
- **Commanders:** commander parity for all 15, except Overdrive's upgrade time (see "Commanders").
- **AI:** AI parity. Teaching AI forts to buy level upgrades is a separate item after the release.
- **Game modes:** skirmish, multiplayer and sandbox. The campaign is not a target, which is why replaying an
  overlay from a skirmish-only mod is acceptable.
- **Load time:** about one minute per match is acceptable for the finished mod (about 1,800 level weapons).
- **v1 saves** are not carried over; v1 and v2 name level weapons differently.

## Commanders

Agreed with the owner on 2026-11-12; revised 2026-11-21: no commander code is copied into this repo (copyright).

- **Each commander's support lives in its own sub-mod** `mods/commander-<x>/`, active only while that commander is.
  It holds only this mod's own code: generated files, and hand-written list hooks and scripts that extend a
  commander's named changes to the level names. Nothing about commanders is in `lib/scalings.lua`.
- **Weapon-file overlays are replayed, not copied:** the game runs a commander's overlay of a weapon file only for
  the base file. The overlay paths are listed by hand in `CommanderOverlayFiles` in `lib/pregen_files.lua` (every
  commander is treated as packed: the generator doesn't read the game's files). For each, it writes
  `mods/commander-<x>/mods/1369514837/weapons/<w>/<w>_<level>.lua` (the game runs it after the level stub), which sets
  `CommanderOverlays` to the overlay's path and runs the level weapon file again, replaying the overlay
  (`ReplayCommanderOverlays`). Only paths go into the repo.
- **Applied before level scaling** (2026-11-21, replaces "after"): the level weapon is the commander's base weapon,
  scaled. Set values scale with the level (Scattershot's active rocket `RoundsEachBurst = 3` gives a level weapon 3 rounds
  scaled to its level), and so do absolute changes (`ReloadTime - 2` cuts less at high levels, where reload is shorter).
  "Set values become differences" (2026-11-12) no longer applies.
- **Projectile swaps keep the level:** an effect that makes a weapon fire another projectile (Shockenaugh's 20mm
  cannon firing `cannon`, its firebeam firing `laser`, Seep's `armoured...`) fires that projectile at the same level, and
  the costs and beam values set with it go through the same scaling functions at that level (the level file adds the
  level suffix to `Projectile` after the replay).
- **Perks keyed to a threshold follow the base weapon:** a level weapon gets Eagle Eye's reload bank exactly when its
  base weapon does, even if its own reload is below the 9 s threshold (the level weapon file sets `EagleEyeReloadBank`,
  which Eagle Eye's `weapons/weapon.lua` honours).
- **Build-speed perks don't touch upgrade times:** Eagle Eye's faster sniper build, like Architect's, leaves level
  upgrades alone (tier upgrades aren't sped up either). Hurricane's build time ×0.9 applies to every weapon, so it
  shortens tier and level upgrades alike (parity, 2026-11-21). Overdrive's upgrade-time change is the one exception.
- **Gameplay only:** sprite swaps (Scattershot's minigun head, Marksman's cannon barrel) are undone after the replay,
  so the level tint stays. Changes that affect play, including `HasLaserSight`, are kept.
- **List hooks:** commander list hooks that loop over every weapon or projectile are left alone. For hooks that name
  SaveNames (e.g. Heavy Weapons' `ProjectilesToAffect`), a hand-written list hook in the sub-mod extends the
  commander's names to the level names; it reads the commander's numbers from the changed base entry or the
  commander's globals, never copies them (`ApplyBaseValuesToLevels` in `weapons/projectile_list.lua` gives a changed
  base field to every level, scaled where levels scale it). Sub-mod list hooks share their globals with this mod's
  list hook, so they don't load `lib/scalings.lua` again (its `path` would be the sub-mod's).
- **Scripts and AI files** that name weapons (`commander.lua`, `ai/ai.lua`): hand-written files in the sub-mod, as in
  v1, that extend the commander's lists or wrap its handlers. A sub-mod `commander.lua` is appended to the commander's
  script; don't call the game's `MarkDevicesOnActive` again there (a second call made its handlers recurse, 2026-11-21). Level names are built in a loop over the levels, taking
  `UpgradeCount` from `dofile(path .. "/lib/scalings.lua")` (in a sub-mod `commander.lua`, `path` is the mod root).
- **Commander-only weapons** (Armourdillo's armour-piercing minigun `minigun2`) are normal `WeaponUpgrades` entries
  with stubs in `weapons/`, as v1 did. Commander-only projectiles (Seep's `armoured<name>`, Buster's `uranium<name>`)
  are transformed projectiles and will keep their level like the others (see "Levels"; not done yet, step 5). A
  commander's `common/` list hook runs after this mod's for every team, so a weapon it defines there (registry field
  `commander`) gets its levels in `RegisterApplyMod` callbacks of this mod's own list hooks, which run for every team
  and pass; a sub-mod hook would give them to one team only (2026-11-21: "inconsistent device counts").
- **Load order** (in-game, 2026-11-12): this mod's list hook → the commander's list hook → the sub-mod's list hook →
  `RegisterApplyMod` callbacks. A commander's change to a named base weapon or projectile therefore misses the level
  ones and is extended in the sub-mod; its loops over everything reach them on their own.
- **Overdrive exception to commander parity.** Overdrive (`commander-da-overclocker`) is the upgrade commander, so it
  benefits most from levels. Its own hook gives level upgrades downgrades and halves their upgrade time; on top,
  a hook in its sub-mod (`mods/commander-da-overclocker/weapons/weapon_list.lua`, constants included) multiplies the
  level weapon's upgrade time by `m(level) / 0.5`, with v1's curve `m(n) = 1 − (n + 2^(1/0.75))^−0.75`
  (`0.5` = Overdrive's multiplier, `0.75` = order). Applied once, Overdrive's upgrade time becomes `m(level)` of
  normal: about 68 % at level 2, 85 % at level 10, 93 % at level 33 (by level, not step). v1 applied it twice (to each weapon and again
  through every upgrade pointing to it), which could make Overdrive slower than no commander; v2 does not.
  `UpgradeNumber` stays the step; nothing else reads it.

## Open design questions

- Whether the runway ammunition's rounds per burst (more aircraft per burst at high levels) is too strong;
  the balance report lists it for the owner.
