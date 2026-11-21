local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base4",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base4"
NodeEffects = {}
MinFireSpeed = 13000.0
MaxFireSpeed = 13000.1
EnergyFireCost = 1348.5470581054688
ReloadTime = 14.918750000000001
Projectile = "_buzzsaw4"
