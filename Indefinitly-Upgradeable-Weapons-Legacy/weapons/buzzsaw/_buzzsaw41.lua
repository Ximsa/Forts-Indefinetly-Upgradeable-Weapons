local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base41",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base41"
NodeEffects = {}
MinFireSpeed = 50000.0
MaxFireSpeed = 50000.1
EnergyFireCost = 3880.8268240329485
ReloadTime = 10.467187500000001
Projectile = "_buzzsaw41"
