# Design

The design goals behind the mod and the reasons for the balance choices. For how it works, see [ARCHITECTURE.md](ARCHITECTURE.md).

## Goal

Let every weapon keep upgrading well beyond its vanilla upgrades, so that late-game metal and energy
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

## Scaling curves

`GrowScale = 0.15` is the base growth rate. With `L` = upgrade step (`level - 1`; the base weapon is level 1, step 0):

| Curve | Formula | Used for |
|---|---|---|
| None | `v` | build time, fire speed minimum, heat/cool periods, drag, ... |
| Fractional power | `v · (1 + g·√L)` | damage per hit, splash, radius, hitpoints, mass, range, impact |
| Linear | `v · (1 + g·L)` | projectile damage, EMP duration, beam duration, production/storage |
| Sub-quadratic | `v · (1 + g·L^1.3)` | costs |
| Geometric decay | `v · 0.98^L` / `v · 0.99^L` | reload time, round period / spread |

The reasoning:

- **Damage grows linearly, other stats grow with √L.** Damage per shot is the main thing a player pays for.
  Splash radius, range and similar stats work together with each other (and with area), so they grow
  more slowly to avoid snowballing.
- **Costs grow faster than power** (`L^1.3`, with `2·g` for build costs and `1.2·g` for fire costs), so
  each level becomes less efficient and players can't gain an advantage just by stacking levels.
- **Rate-of-fire stats shrink geometrically** to approach zero smoothly without ever reaching it.
- **`RoundsEachBurst`** doubles halfway through the levels and quadruples at the last level. Beam weapons skip this and
  get a longer `BeamDuration` instead.
- **Fire angle** widens by `L/3` degrees on each side.
- **Numbers shown to the player** (costs, hitpoints, mass) are rounded to 3 significant digits (`Significant3`).

## Costs

- A level's build cost is `BuildCostScale(base · build_cost_factor, L)`.
- The upgrade price from level `L-1` to `L` is the **difference** between the two build costs, so upgrading step by
  step costs the same as building the higher level directly.
- `build_cost_factor` adjusts weapons whose base cost doesn't match their value at high levels
  (e.g. buzzsaw ×3; flak and magnabeam ×0.5; machinegun and minigun ×1.2; incendiary mortar ×0.75).

## Visual identity

The tint of the level sprite is
`(1 - |sin(1.5πt)|, 1 - |sin(0.5πt)|, 1 - |sin(4.5πt)|)` with `t = L / UpgradeCount`.
This means the colour depends on `UpgradeCount`: changing the level count changes every level's colour.

## Scope

Supported: vanilla, Tons of Guns, Moonshot. Work in progress: High Seas (harpoon, runway and their ammunition).
Planned: the rest of High Seas and commander-specific weapons (see README checklist).

## Open design questions

- What `UpgradeCount` should be for release (it was 48; it's currently 4 while the High Seas work is being tested).
- How High Seas ammunition (aircraft, harpoon payloads) should scale and be named.
