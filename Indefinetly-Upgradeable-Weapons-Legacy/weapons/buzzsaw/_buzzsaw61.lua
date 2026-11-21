local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base61",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base61"
NodeEffects = {}
MinFireSpeed = 70000.0
MaxFireSpeed = 70000.1
EnergyFireCost = 5989.655228013954
ReloadTime = 8.060937500000001
Projectile = "_buzzsaw61"
