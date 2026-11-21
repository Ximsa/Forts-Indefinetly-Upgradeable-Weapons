local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base56",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base56"
NodeEffects = {}
MinFireSpeed = 65000.0
MaxFireSpeed = 65000.1
EnergyFireCost = 5399.655480055989
ReloadTime = 8.662500000000001
Projectile = "_buzzsaw56"
