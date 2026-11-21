local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base46",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base46"
NodeEffects = {}
MinFireSpeed = 55000.0
MaxFireSpeed = 55000.1
EnergyFireCost = 4348.401612689676
ReloadTime = 9.865625000000001
Projectile = "_buzzsaw46"
