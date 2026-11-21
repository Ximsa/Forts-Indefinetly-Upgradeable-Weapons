local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base36",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base36"
NodeEffects = {}
MinFireSpeed = 45000.0
MaxFireSpeed = 45000.1
EnergyFireCost = 3448.129536292052
ReloadTime = 11.068750000000001
Projectile = "_buzzsaw36"
