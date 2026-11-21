local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base32",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base32"
NodeEffects = {}
EnergyFireCost = 1669.9453462521603
MetalFireCost = 166.9945346252161
ReloadTime = 12.299999999999999
FireSpreadMultiplier = 0.05600000000000001
Projectile = "smokebomb32"
DestroyProjectile = "smoke32"
