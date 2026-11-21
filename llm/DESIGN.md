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

- The base weapon is level 1. Level upgrades are levels 2 and up; the step is the level minus 1.
- **The release upgrade count is 48** (levels 2..49). The repository always holds 48. Lower counts are only for
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
  registry tree gets its existing `flaming…` and `damaged…` versions as children (`TransformedProjectilePrefixes`).
  Commanders' armoured and uranium versions will keep their level too (step 5).
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
| Sub-quadratic | `v · (1 + g·L^1.3)` | build costs (`BuildCostGrowScale`), fire costs (`FireCostGrowScale`) |
| Geometric decay | `v · d^L` | reload time (`ReloadDecay`), round period and spread (0.98 / 0.99) |

The values (2026-11-11): `DamageGrowScale = 0.125` (v1's rate), `RoundsEachBurstGrowScale = 1/24`,
`ReloadDecay = 0.98`, all three set by the owner; `BuildCostGrowScale = 0.50` and `FireCostGrowScale = 0.10`, tuned.

The reasoning:

- **Damage grows linearly, other stats grow with √L.** Damage per shot is the main thing a player pays for.
  Splash radius, range and similar stats work together with each other (and with area), so they grow
  more slowly to avoid snowballing.
- **Costs grow faster than power** (`L^1.3`), so each level becomes less efficient and players can't gain an
  advantage just by stacking levels.
- **Damage grows at v1's rate** (`0.125` per step) and **reload times keep shortening** at `ReloadDecay = 0.98`
  (×0.63 at level 24, ×0.38 at 49), both set by the owner on 2026-11-11. Together with rounds per burst, power
  therefore runs ahead of v1 (see below); only the costs are tuned.
- **Rounds per burst** grows linearly at `1/24` (double by step 24), chosen by the owner so that 1-round weapons get
  a second round (level 25) and a third (level 49) within a real battle. It moves in whole rounds, which makes power
  jump at those levels; that is why balance is fitted only up to level 24.
- **Beam weapons** don't get more rounds; their `BeamDuration` grows at the same rate instead, and their
  `BeamDamageMultiplier` stays the base value, so a beam's damage grows through projectile damage and duration like
  any other weapon's. Their energy fire cost per shot is scaled like any other fire cost.
- **Energy Dome** (owner, 2026-11-11) grows by firing longer: it keeps firing bolts every `RoundPeriod` (0.04 s) for
  the whole burst, so its rounds per burst grows at twice the general rate (50 → 150 at level 25, 250 at 49) while its round period, size
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

- **Balance is per step: v2 level N should roughly match v1 level N.** This holds at `GlobalScale = 1`; `GlobalScale`
  is the owner's knob for the step sizing (each step counts as `GlobalScale` steps, for power and cost alike).
- **What is compared.** Power is direct damage × rounds per burst (× beam duration for beams) ÷ reload time, as a
  multiple of the base weapon. Spend is the total metal to reach a level, with energy reported next to it. Fire cost
  per point of damage is a second check. Range, splash, hitpoints and accuracy are reported but not tuned to v1.
- **The curve shapes don't change.** Tuning only adjusts `BuildCostGrowScale` and `FireCostGrowScale` (the owner
  set `DamageGrowScale`, `RoundsEachBurstGrowScale` and `ReloadDecay`).
- **`SecondaryGrowScale` stays 0.15**, so the secondary stats don't move.
- **"Roughly match" is measured on average over levels 2..24**, the last level before 1-round weapons get a second
  round (owner, 2026-11-11): the jump in whole rounds distorts the fit too much. Levels above 24 are reported, not
  fitted. It is an average, not one level, because the shapes differ (v1's spend grows with the square of the level).
- **Per-weapon corrections go only through `build_cost_factor`.** Weapons that stay far from v1, and weapons v1
  never had, are listed in the balance report for the owner to judge.

Result of the 2026-11-11 tuning (averages over levels 2..24, all 13 weapons both versions have): power 46 % (not
tuned), metal spend 21 %, fire cost per damage 22 %. Cannon: level 10 v1 2.3× base DPS / v2 2.6×; level 24 v1 4.8×
for about 30,000 metal / v2 6.2× for about 27,400; level 49 v1 11.3× for about 101,700 / v2 55× for about 69,900.

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

Agreed with the owner on 2026-11-12.

- **Each commander's support lives in its own sub-mod** `mods/commander-<x>/`, active only while that commander is.
  Commander adjustments are written by hand there, copied from the commander's current files; nothing about
  commanders is in `lib/scalings.lua` and no adjustment code is generated.
- **Weapon-file overlays:** the change is copied once per weapon into a hand-written file in the sub-mod. The game
  matches overlays by path, so `pregen_files.lua` writes one identical one-line file per level,
  `mods/commander-<x>/mods/1369514837/weapons/<w>/<w>_<level>.lua`, that loads it. Which weapons get these files
  comes from scanning the sub-mod's hand-written files.
- **Applied after level scaling**, as in v1: the copied change runs on the finished level weapon, so absolute changes
  stay absolute (`ReloadTime - 2` cuts 2 s at every level).
- **Set values become differences** (owner, 2026-11-12): where a commander sets a stat that levels scale to a fixed
  value (Eagle Eye's minigun `RoundsEachBurst = 11`, Firebird's `BeamDuration = 3.2`, active fire costs), the copy
  applies the same difference from the base value (`RoundsEachBurst + (11 - base)`), so the level keeps what it bought.
  Stats that levels don't scale (`HeatPeriod`, `RoundPeriod`, ...) are set as written.
- **Projectile swaps keep the level:** an effect that makes a weapon fire another projectile (Shockenaugh's 20mm
  cannon firing `cannon`, its firebeam firing `laser`, Seep's `armoured...`) fires that projectile at the same level, and
  the costs and beam values copied with it go through the same scaling functions at that level.
- **Perks keyed to a threshold follow the base weapon:** a level weapon gets Eagle Eye's reload bank exactly when its
  base weapon does, even if its own reload is below the 9 s threshold.
- **Build-speed perks don't touch upgrade times:** Eagle Eye's faster sniper build, like Architect's, leaves level
  upgrades alone (tier upgrades aren't sped up either). Overdrive is the only commander that changes upgrade time.
- **Gameplay only:** sprite swaps (Scattershot's minigun head, Marksman's cannon barrel) are not copied, so the level
  tint stays. Changes that affect play, including `HasLaserSight`, are.
- **List hooks:** commander list hooks that loop over every weapon or projectile are left alone. For hooks that name
  SaveNames (e.g. Heavy Weapons' `ProjectilesToAffect`), a hand-written list hook in the sub-mod extends the
  commander's names to the level names; it reads the commander's numbers and globals where it can instead of copying them.
- **Scripts and AI files** that name weapons (`commander.lua`, `ai/ai.lua`): hand-written files in the sub-mod, as in
  v1. `commander.lua` wraps the original handlers. Level names are built in a loop over the levels, taking
  `UpgradeCount` from `dofile(path .. "/lib/scalings.lua")` (in a sub-mod `commander.lua`, `path` is the mod root).
- **Commander-only weapons** (Armourdillo's armour-piercing minigun `minigun2`) are normal `WeaponUpgrades` entries
  with stubs in `weapons/`, as v1 did. Commander-only projectiles (Seep's `armoured<name>`, Buster's `uranium<name>`)
  are transformed projectiles and will keep their level like the others (see "Levels"; not done yet, step 5). A
  commander's own list hook runs after this mod's, so a weapon it defines there gets its levels from a list hook in
  the sub-mod, which runs after the commander's.
- **Load order** (in-game, 2026-11-12): this mod's list hook → the commander's list hook → the sub-mod's list hook →
  `RegisterApplyMod` callbacks. A commander's change to a named base weapon or projectile therefore misses the level
  ones and is copied in the sub-mod; its loops over everything reach them on their own.
- **Overdrive exception to commander parity.** Overdrive (`commander-da-overclocker`) is the upgrade commander, so it
  benefits most from levels. Its own hook gives level upgrades downgrades and halves their upgrade time; on top,
  a hook in its sub-mod (`mods/commander-da-overclocker/weapons/weapon_list.lua`, constants included) multiplies the
  level weapon's upgrade time by `m(level) / 0.5`, with v1's curve `m(n) = 1 − (n + 2^(1/0.75))^−0.75`
  (`0.5` = Overdrive's multiplier, `0.75` = order). Applied once, Overdrive's upgrade time becomes `m(level)` of
  normal: about 68 % at level 2, 85 % at level 10, 95 % at level 49. v1 applied it twice (to each weapon and again
  through every upgrade pointing to it), which could make Overdrive slower than no commander; v2 does not.
  `UpgradeNumber` stays the step; nothing else reads it.

## Open design questions

- Whether the runway ammunition's rounds per burst (more aircraft per burst at high levels) is too strong;
  the balance report lists it for the owner.
