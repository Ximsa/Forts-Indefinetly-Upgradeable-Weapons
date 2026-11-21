local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base59",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base59"
NodeEffects = {}
MinFireSpeed = 68000.0
MaxFireSpeed = 68000.1
EnergyFireCost = 5748.153328744415
ReloadTime = 8.3015625
Projectile = "_buzzsaw59"
