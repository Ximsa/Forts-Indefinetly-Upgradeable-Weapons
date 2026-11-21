local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base64",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base64"
NodeEffects = {}
MinFireSpeed = 73000.0
MaxFireSpeed = 73000.1
EnergyFireCost = 6366.243694279983
ReloadTime = 7.7
Projectile = "_buzzsaw64"
