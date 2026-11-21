local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base9",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base9"
NodeEffects = {}
MinFireSpeed = 18000.0
MaxFireSpeed = 18000.1
EnergyFireCost = 1612.0078105582909
ReloadTime = 14.317187500000001
Projectile = "_buzzsaw9"
