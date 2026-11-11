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
  `Upgrades` and `InvertedType`. Done for tier upgrades and ceiling-mounted forms; **(planned: the deck gun's
  focused form, PLAN step 3)**
- **Transformed projectiles keep their level**: a level projectile that the game sets on fire, damages or splits
  becomes the same level of the resulting projectile. **(planned, except child projectiles)**

## Scaling curves

`GrowScale = 0.15` is the base growth rate. With `L` = step:

| Curve | Formula | Used for |
|---|---|---|
| None | `v` | build time, fire speed minimum, heat/cool periods, drag, ... |
| Fractional power | `v · (1 + g·√L)` | damage per hit, splash, radius, hitpoints, mass, range, impact |
| Linear | `v · (1 + g·L)` | projectile damage, EMP duration, beam duration, production/storage, rounds per burst |
| Sub-quadratic | `v · (1 + g·L^1.3)` | costs |
| Geometric decay | `v · 0.98^L` / `v · 0.99^L` | reload time, round period / spread |

The reasoning:

- **Damage grows linearly, other stats grow with √L.** Damage per shot is the main thing a player pays for.
  Splash radius, range and similar stats work together with each other (and with area), so they grow
  more slowly to avoid snowballing.
- **Costs grow faster than power** (`L^1.3`, with `2·g` for build costs and `1.2·g` for fire costs), so
  each level becomes less efficient and players can't gain an advantage just by stacking levels.
- **Rate-of-fire stats shrink geometrically** to approach zero smoothly without ever reaching it.
- **Rounds per burst** grows linearly with a fixed `grow_scale` (`RoundsEachBurstGrowScale = 1/48`: double by
  step 48; tuned in PLAN step 2). Beam weapons skip this and get a longer
  `BeamDuration` instead.
- **Fire angle** widens by `L/3` degrees on each side.
- **Numbers shown to the player** (costs, hitpoints, mass) are rounded to 3 significant digits (`Significant3`).
- **High Seas ammunition** carries its own stats, which override the weapon's. They are scaled with the same
  rules as the weapon, and their projectiles like any other projectile.

## Balance against v1 (planned)

v1 is the reference for how much power a given spend buys. Its numbers are in [V1.md](V1.md).

- **Balance is per step: v2 level N should roughly match v1 level N**, up to level 49. The owner may change the
  step sizing later.
- **What is compared.** Power is direct damage × rounds per burst ÷ reload time, as a multiple of the base weapon.
  Spend is the total metal to reach a level, with energy reported next to it. Fire cost per point of damage is a
  second check. Range, splash, hitpoints and accuracy are reported but not tuned to v1.
- **The curve shapes don't change.** Sub-quadratic stays sub-quadratic, linear stays linear, fractional power
  stays fractional power. Tuning only adjusts:
  - one `grow_scale` multiplier each for damage, rounds per burst, build cost and fire cost
    (like the existing `2 * GrowScale` for build cost)
  - the decay rate of reload time
- **The global `GrowScale` stays 0.15**, so the secondary stats don't move.
- **Rounds per burst keeps growing**, more slowly than today; damage growth is reduced so that power still
  matches v1 level for level.
- **"Roughly match" is measured on average over levels 2..49**, not only at level 49, because the shapes differ
  (v1's spend grows with the square of the level).
- **Per-weapon corrections go only through `build_cost_factor`.** Weapons that stay far from v1, and weapons v1
  never had, are listed in the balance report for the owner to judge.

Starting point (cannon, level 49): v1 gives about 11.3× base DPS for about 101,700 metal. v2 with the curves of
2026-11-11 gives about 65× for about 42,300 metal.

## Costs

- A level's build cost is `BuildCostScale(base · build_cost_factor, L)`.
- The price of a level upgrade from step `L-1` to `L` is the **difference** between the two build costs, so
  upgrading step by step costs the same as building the higher level directly.
- The price of a tier upgrade at a level is the build-cost difference between the two level weapons, never below
  the game's own price for that tier upgrade. The game prices its tier upgrades the same way.
- `build_cost_factor` adjusts weapons whose base cost doesn't match their value at high levels
  (e.g. buzzsaw ×3; flak and magnabeam ×0.5; machinegun and minigun ×1.2; incendiary mortar ×0.75).
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
- **Commanders:** commander parity for all 15.
- **AI:** AI parity. Teaching AI forts to buy level upgrades is a separate item after the release.
- **Game modes:** skirmish, multiplayer and sandbox. The campaign is not a target, which is why replaying an
  overlay from a skirmish-only mod is acceptable.
- **Load time:** about one minute per match is acceptable for the finished mod (about 1,800 level weapons).
- **v1 saves** are not carried over; v1 and v2 name level weapons differently.

## Open design questions

- How the Energy Dome should grow. It needs facts from the game first (which fields set its strength).
- Whether the runway ammunition's rounds per burst (more aircraft per burst at high levels) is too strong;
  the balance report lists it for the owner.
