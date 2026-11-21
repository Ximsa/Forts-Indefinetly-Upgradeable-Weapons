# Adding a projectile

Projectiles receive levels through the weapons that fire them.
A projectile has levels if, and only if, it appears in the `projectile` tree of a registry entry in `lib/scalings.lua`.
For each level, `weapons/projectile_list.lua` copies the base projectile, scales the fields listed in
`Scaling.ProjectileList`, and renames its children to the same level.

## Procedure

1. Add the projectile to the tree of the weapon that fires it.
   Nest each child below its parent, e.g. `{ flak = { shrapnel = {} } }`.
2. Check that every field which should grow appears in `Scaling.ProjectileList`.
   A new field requires a rule there; new tunable numbers belong in `lib/scalings.lua`.
3. Run `lua55 check_lists.lua` from `lib/`, deploy, and test in a match.

## Transformed projectiles

The game and the commanders transform projectiles during play:
a firebeam sets a shell on fire, a hit damages a warhead, and an armoured missile loses its armour.
Such versions are recognized by their prefix (`TransformedProjectilePrefixes`: flaming, damaged, armoured).
Every projectile in a tree receives its existing transformed versions as children,
so a level projectile becomes the same level of its transformed version, and back.
Reactions keyed by the SaveName of another projectile, e.g. `Effects.Impact["firebeam"]`,
are extended to the levels of that projectile as well.

## Common pitfalls

- **Projectiles outside the tree.**
  A level weapon fires `<projectile>_<level>`.
  If the projectile is absent from every tree, that name does not exist and the weapon fires nothing useful.
- **Shared projectiles.**
  A projectile in the trees of several weapons is built once, with the rules of the first entry.
  Per-weapon `scaling` therefore does not apply to the others.
- **Renaming is textual.**
  Child names are replaced wherever they occur as string values in the projectile.
  A SaveName that coincides with another value, such as a `ProjectileType` of `"missile"` or `"mortar"`,
  must not become a child name outside `Effects`.
- **New transformations.**
  A new kind of transformed version needs its prefix in `TransformedProjectilePrefixes`.
  Without it, the transformation falls back to the base projectile and loses the level.
- **AI parity.**
  `ai/ai.lua` makes level projectiles shootable like their base.
  A transformed version without an entry of its own is shootable like its plain projectile.
