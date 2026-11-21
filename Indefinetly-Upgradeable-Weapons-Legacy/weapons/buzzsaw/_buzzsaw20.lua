local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base20",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base20"
NodeEffects = {}
MinFireSpeed = 29000.0
MaxFireSpeed = 29000.1
EnergyFireCost = 2268.7926665539867
ReloadTime = 12.99375
Projectile = "_buzzsaw20"
