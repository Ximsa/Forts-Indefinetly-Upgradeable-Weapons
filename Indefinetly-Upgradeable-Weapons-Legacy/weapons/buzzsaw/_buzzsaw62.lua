local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base62",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base62"
NodeEffects = {}
MinFireSpeed = 71000.0
MaxFireSpeed = 71000.1
EnergyFireCost = 6113.243590951672
ReloadTime = 7.940625
Projectile = "_buzzsaw62"
