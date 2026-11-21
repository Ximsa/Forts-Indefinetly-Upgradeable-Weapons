# Balancing

Every number that governs balance is in `lib/scalings.lua`.
A level weapon is the base weapon with each scaled stat passed through a curve,
whose argument is the step of the level rather than the level itself.
Balancing therefore takes place in three dimensions:
the size of a step (the whole scale), the curve of each stat (the parameters), and corrections for single weapons.
After any change, regenerate nothing unless `UpgradeCount` changed, deploy, and compare the result with the balance report.

## The whole scale

The step of a level is `(level - 1) ^ StepPower` (`UpgradeStep`), and the top level is `UpgradeCount + 1`.

- `StepPower` sets how much each level upgrade is worth, in power and in cost alike.
  Since 2026-11-21 it is `log 63 / log 32` (about 1.195): the first upgrade is one step, like v1, each further one
  is worth a little more, and level 33 reaches step 63, v1's top level 64.
  Raising it makes the high upgrades larger and dearer; the first upgrade stays one step.
- `UpgradeCount` sets the number of levels, and thus the loading time, as every level adds one weapon per registry entry.
  A change requires regenerating the stubs (`lua55 pregen_files.lua` in `lib/`) and deleting those above the new top level.
- The two interact: the top level reaches the step `UpgradeStep(UpgradeCount + 1)`, currently 63.
  To trade levels for loading time without changing the top, retune `StepPower` so that step stays the same.

Since every curve is tuned per step, changing either value leaves the per-step balance intact;
only the power and cost of a given level move.

## Parameters

Each scaled stat has a rule in one of three tables in `Scaling`:
`WeaponList` (costs in the weapon list), `WeaponFile` (stats in the weapon file) and `ProjectileList` (projectiles).
A rule is a function of the base value and the step.
The rules use four curves, each with a growth rate `g` and the step `L`:

| Curve | Formula | Typical stats |
|---|---|---|
| Linear | `v · (1 + g·L)` | direct damage, rounds per burst, beam duration |
| Fractional power | `v · (1 + g·√L)` | splash, range, hitpoints, mass |
| Sub-quadratic | `v · (1 + g·L^p)`, p = `CostPower` | build cost, fire cost |
| Geometric decay | `v · d^L` | reload time, round period, spread |

The growth rates are named constants at the top of the file:

- `DamageGrowScale` (0.125) governs direct damage of every kind.
- `RoundsEachBurstGrowScale` (1/24) governs rounds per burst and, for beams, the beam duration.
  Rounds are whole numbers, so power rises in jumps: a weapon with one round gains its second at step 24.
- `ReloadDecay` (0.98) governs reload time and round period; a smaller value shortens them faster.
- `BuildCostGrowScale` (0.32), `FireCostGrowScale` (0.045) and their shared exponent `CostPower` (1.6) govern the costs.
  They grow faster than power, so that each level is less efficient than the one before.
- `SecondaryGrowScale` (0.15) governs every stat without a rate of its own.

To adjust one stat, change its rate.
To change the shape of a stat's growth, assign it another curve in the matching `Scaling` table.
A stat without a rule is not scaled at all; adding `Field = fn` to the right table brings it in.

## Single weapons

Each registry entry in `WeaponUpgrades` offers three corrections:

- `build_cost_factor` multiplies the cost of every level of this weapon, e.g. 0.5 for a weapon that is too weak for its price.
  This is the preferred correction, as it leaves the curves untouched.
- `upgrade_time` sets the duration of one level upgrade in seconds.
- `scaling` replaces or adds rules for this weapon only.
  The Energy Dome, for instance, fires longer instead of faster:

```lua
DomeScaling = {
   WeaponFile = { RoundsEachBurst = function(value, level)
                     return math.floor(DefaultScaleLinear(value, level, 2 * RoundsEachBurstGrowScale)) end,
                  RoundPeriod = DefaultScaleNone },
}
```

## Measuring

`lua55 balance_report.lua` in `lib/` compares every weapon with version 1 of the mod, step by step,
and writes `dump/balance_<date>.txt`.
Power is direct damage times rounds per burst, divided by reload time, relative to the base weapon;
spend is the total metal to reach a level.
The summary reports the average deviation over the first 23 steps, before the jump to a second round distorts it.
`lua55 balance_report.lua tune` additionally searches the cost rates for the smallest deviation.
Weapons that version 1 never had are listed next to a comparable weapon, for judgement by hand.

## Common pitfalls

- **Power and cost move together.**
  The step curve scales both, so it cannot make the mod cheaper or stronger as a whole; the cost rates can.
- **Jumps in rounds.**
  A small change to `RoundsEachBurstGrowScale` moves the level at which a weapon gains a round,
  which changes its power by half or more at once.
- **Rounded values.**
  Costs, hitpoints and similar numbers are rounded to three significant digits (`Significant3`).
  Very small differences between levels may therefore vanish.
- **Shared projectiles.**
  A projectile in the trees of several weapons is scaled once, with the rules of the first entry;
  a per-weapon `scaling` does not reach the others.
- **Commanders.**
  A commander's change to a weapon file is applied before scaling, so it grows with the level.
  A strong commander bonus therefore becomes stronger at high levels.
- **Overdrive.**
  Its upgrade-time curve is defined in its sub-mod, `mods/commander-da-overclocker/weapons/weapon_list.lua`,
  not in `lib/scalings.lua`.
