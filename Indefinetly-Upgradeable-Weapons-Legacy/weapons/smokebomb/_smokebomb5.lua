local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base5",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base5"
NodeEffects = {}
EnergyFireCost = 442.03595995903015
MetalFireCost = 44.203595995903015
ReloadTime = 15.759374999999999
FireSpreadMultiplier = 0.028999999999999998
Projectile = "smokebomb5"
DestroyProjectile = "smoke5"
