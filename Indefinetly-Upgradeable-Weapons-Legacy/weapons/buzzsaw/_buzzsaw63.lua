local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base63",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base63"
NodeEffects = {}
MinFireSpeed = 72000.0
MaxFireSpeed = 72000.1
EnergyFireCost = 6238.763022060291
ReloadTime = 7.8203125
Projectile = "_buzzsaw63"
