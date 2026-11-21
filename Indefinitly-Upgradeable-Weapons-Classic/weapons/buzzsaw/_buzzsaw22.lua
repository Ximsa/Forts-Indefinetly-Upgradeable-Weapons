local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base22",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base22"
NodeEffects = {}
MinFireSpeed = 31000.0
MaxFireSpeed = 31000.1
EnergyFireCost = 2400.7150918434068
ReloadTime = 12.753125
Projectile = "_buzzsaw22"
