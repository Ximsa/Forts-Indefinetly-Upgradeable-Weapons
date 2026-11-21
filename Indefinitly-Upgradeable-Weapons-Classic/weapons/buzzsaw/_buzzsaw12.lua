local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base12",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base12"
NodeEffects = {}
MinFireSpeed = 21000.0
MaxFireSpeed = 21000.1
EnergyFireCost = 1780.1710700018716
ReloadTime = 13.95625
Projectile = "_buzzsaw12"
