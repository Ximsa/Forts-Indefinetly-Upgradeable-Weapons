local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base14",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base14"
NodeEffects = {}
MinFireSpeed = 23000.0
MaxFireSpeed = 23000.1
EnergyFireCost = 1896.7047780170674
ReloadTime = 13.715625000000001
Projectile = "_buzzsaw14"
