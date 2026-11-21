local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base8",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base8"
NodeEffects = {}
MinFireSpeed = 17000.0
MaxFireSpeed = 17000.1
EnergyFireCost = 1557.669228857394
ReloadTime = 14.4375
Projectile = "_buzzsaw8"
