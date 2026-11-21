local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base33",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base33"
NodeEffects = {}
MinFireSpeed = 42000.0
MaxFireSpeed = 42000.1
EnergyFireCost = 3204.1618540254663
ReloadTime = 11.4296875
Projectile = "_buzzsaw33"
