local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base3",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base3"
NodeEffects = {}
EnergyFireCost = 369.9169921875
MetalFireCost = 36.99169921875
ReloadTime = 16.015625
FireSpreadMultiplier = 0.027000000000000003
Projectile = "smokebomb3"
DestroyProjectile = "smoke3"
