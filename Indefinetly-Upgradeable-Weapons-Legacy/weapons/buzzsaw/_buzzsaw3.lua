local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base3",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base3"
NodeEffects = {}
MinFireSpeed = 12000.0
MaxFireSpeed = 12000.1
EnergyFireCost = 1298.26171875
ReloadTime = 15.0390625
Projectile = "_buzzsaw3"
