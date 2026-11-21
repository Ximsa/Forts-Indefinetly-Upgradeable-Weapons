local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base11",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base11"
NodeEffects = {}
MinFireSpeed = 20000.0
MaxFireSpeed = 20000.1
EnergyFireCost = 1723.2453612326121
ReloadTime = 14.0765625
Projectile = "_buzzsaw11"
