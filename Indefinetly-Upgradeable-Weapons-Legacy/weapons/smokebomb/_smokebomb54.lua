local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base54",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base54"
NodeEffects = {}
EnergyFireCost = 3129.196300926014
MetalFireCost = 312.91963009260144
ReloadTime = 9.48125
FireSpreadMultiplier = 0.07800000000000001
Projectile = "smokebomb54"
DestroyProjectile = "smoke54"
