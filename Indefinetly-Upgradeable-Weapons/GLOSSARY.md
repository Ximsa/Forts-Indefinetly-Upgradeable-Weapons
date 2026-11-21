# Indefinitely Upgradeable Weapons

A Forts mod that lets weapons keep upgrading beyond the upgrades the game itself offers.

## Language

### Weapons and levels

**Base weapon**:
A weapon as the game, a DLC or another mod defines it, untouched by this mod. It counts as level 1.
_Avoid_: original weapon, vanilla weapon, normal weapon

**Level**:
A weapon's position in this mod's upgrade chain: 1 is the base weapon, each higher number is one upgrade further. It is the number players see.
_Avoid_: upgrade number, rank, stage

**Step**:
What drives the scaling functions; `UpgradeStep(level)` maps a level to its step (`(level - 1) ^ StepPower`: level 2 is step 1, level 33 is step 63). Balance is expressed in steps.
_Avoid_: upgrade level, iteration

**Level weapon**:
A base weapon at a level above 1.
_Avoid_: upgraded weapon, indef weapon

**Tier**:
A weapon's position in the game's own upgrade chain, such as machinegun then minigun. Tiers belong to the game; levels belong to this mod.

**Level upgrade**:
Moving a weapon up one level within its tier.
_Avoid_: indef upgrade

**Tier upgrade**:
Moving a weapon to the next tier. A level weapon keeps its level when it does.
_Avoid_: vanilla upgrade

**Variant**:
A weapon the game treats as another form of the same weapon, such as its ceiling-mounted or focused form. A level weapon's variants are at the same level.
_Avoid_: inverted type, alternate weapon

**Transformed projectile**:
A version of a projectile that the game or a commander makes from it, such as its flaming, damaged, armoured or uranium version. A level projectile's transformed versions are at the same level.
_Avoid_: projectile swap (a weapon firing a different projectile, which is not a transformation)

**Upgrade count**:
The number of level upgrades available for each weapon.
_Avoid_: level count, iterations

### Versions

**v1**:
The original Indefinitely Upgradeable Weapons mod, with stats tuned by hand for each weapon. It is the reference for how much power a given spend should buy.
_Avoid_: the original indef weapons, the old mod

**v2**:
This rewrite, which derives every level of every weapon from shared scaling rules. It replaces v1 once it is feature complete.

**Feature complete**:
The state in which v2 may replace v1: every base-game and DLC weapon has levels, tier upgrades work at every level, all commanders have commander parity, AI parity holds, balance has been checked against v1, and the upgrade count is at its release value.

### Other mods

**Overlay**:
A file from another mod that changes a weapon the game has loaded.
_Avoid_: patch, hook

**List hook**:
A file from another mod that changes the game's list of weapons or projectiles as a whole, rather than one weapon's file.
_Avoid_: overlay (for this sense)

**Replay**:
Applying an overlay to a level weapon, because the game itself only applies it to the base weapon.

**Commander parity**:
The rule that a commander affects a level weapon exactly as it affects that weapon's base weapon, no more and no less. Overdrive is the one agreed exception.

**AI parity**:
The rule that the AI shoots down a level projectile as it does the base projectile, and fires a level anti-air weapon as it does the base weapon.
