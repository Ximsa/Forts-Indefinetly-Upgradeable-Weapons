local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base55",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base55"
NodeEffects = {}
MinFireSpeed = 64000.0
MaxFireSpeed = 64000.1
EnergyFireCost = 5287.045395747436
ReloadTime = 8.7828125
Projectile = "_buzzsaw55"
