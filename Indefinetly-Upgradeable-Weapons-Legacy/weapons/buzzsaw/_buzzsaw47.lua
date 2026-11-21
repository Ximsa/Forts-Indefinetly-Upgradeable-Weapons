local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base47",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base47"
NodeEffects = {}
MinFireSpeed = 56000.0
MaxFireSpeed = 56000.1
EnergyFireCost = 4446.345387887952
ReloadTime = 9.7453125
Projectile = "_buzzsaw47"
