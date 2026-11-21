local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base6",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base6"
NodeEffects = {}
EnergyFireCost = 478.94277183339
MetalFireCost = 47.894277183339
ReloadTime = 15.631249999999998
FireSpreadMultiplier = 0.03
Projectile = "smokebomb6"
DestroyProjectile = "smoke6"
