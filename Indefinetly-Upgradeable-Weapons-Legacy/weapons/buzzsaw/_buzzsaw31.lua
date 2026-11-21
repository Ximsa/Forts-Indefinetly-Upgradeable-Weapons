local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base31",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base31"
NodeEffects = {}
MinFireSpeed = 40000.0
MaxFireSpeed = 40000.1
EnergyFireCost = 3047.7081548138012
ReloadTime = 11.6703125
Projectile = "_buzzsaw31"
