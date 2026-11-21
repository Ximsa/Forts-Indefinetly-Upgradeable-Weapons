local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base5",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base5"
NodeEffects = {}
MinFireSpeed = 14000.0
MaxFireSpeed = 14000.1
EnergyFireCost = 1399.6181058883667
ReloadTime = 14.7984375
Projectile = "_buzzsaw5"
