local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base52",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base52"
NodeEffects = {}
EnergyFireCost = 2975.031490791231
MetalFireCost = 297.5031490791232
ReloadTime = 9.737499999999999
FireSpreadMultiplier = 0.07600000000000001
Projectile = "smokebomb52"
DestroyProjectile = "smoke52"
