local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base7",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base7"
NodeEffects = {}
MinFireSpeed = 16000.0
MaxFireSpeed = 16000.1
EnergyFireCost = 1504.166625336511
ReloadTime = 14.5578125
Projectile = "_buzzsaw7"
