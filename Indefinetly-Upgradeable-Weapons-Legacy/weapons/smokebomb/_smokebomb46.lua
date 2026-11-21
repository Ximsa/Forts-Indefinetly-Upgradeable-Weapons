local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base46",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base46"
NodeEffects = {}
EnergyFireCost = 2540.2088397984226
MetalFireCost = 254.02088397984238
ReloadTime = 10.506249999999998
FireSpreadMultiplier = 0.06999999999999999
Projectile = "smokebomb46"
DestroyProjectile = "smoke46"
