local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base42",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base42"
NodeEffects = {}
MinFireSpeed = 51000.0
MaxFireSpeed = 51000.1
EnergyFireCost = 3971.464743158463
ReloadTime = 10.346875
Projectile = "_buzzsaw42"
