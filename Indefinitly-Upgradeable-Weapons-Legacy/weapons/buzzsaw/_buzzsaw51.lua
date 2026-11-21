local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base51",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base51"
NodeEffects = {}
MinFireSpeed = 60000.0
MaxFireSpeed = 60000.1
EnergyFireCost = 4853.665198067866
ReloadTime = 9.264062500000001
Projectile = "_buzzsaw51"
