local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base45",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base45"
NodeEffects = {}
EnergyFireCost = 2471.590242263062
MetalFireCost = 247.15902422630634
ReloadTime = 10.634374999999999
FireSpreadMultiplier = 0.06899999999999999
Projectile = "smokebomb45"
DestroyProjectile = "smoke45"
