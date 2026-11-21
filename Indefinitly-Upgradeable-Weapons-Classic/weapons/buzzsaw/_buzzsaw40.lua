local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base40",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base40"
NodeEffects = {}
MinFireSpeed = 49000.0
MaxFireSpeed = 49000.1
EnergyFireCost = 3791.5833344324415
ReloadTime = 10.5875
Projectile = "_buzzsaw40"
