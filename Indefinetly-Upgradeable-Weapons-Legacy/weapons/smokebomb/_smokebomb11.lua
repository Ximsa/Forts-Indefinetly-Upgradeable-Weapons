local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base11",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base11"
NodeEffects = {}
EnergyFireCost = 672.3091993385892
MetalFireCost = 67.23091993385893
ReloadTime = 14.990624999999998
FireSpreadMultiplier = 0.034999999999999996
Projectile = "smokebomb11"
DestroyProjectile = "smoke11"
