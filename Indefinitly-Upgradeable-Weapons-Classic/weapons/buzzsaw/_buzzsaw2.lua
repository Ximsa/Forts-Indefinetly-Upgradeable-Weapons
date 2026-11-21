local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base2",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base2"
NodeEffects = {}
MinFireSpeed = 11000.0
MaxFireSpeed = 11000.1
EnergyFireCost = 1248.75
ReloadTime = 15.159375
Projectile = "_buzzsaw2"
