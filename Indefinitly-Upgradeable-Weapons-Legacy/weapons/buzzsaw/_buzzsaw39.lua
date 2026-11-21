local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base39",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base39"
NodeEffects = {}
MinFireSpeed = 48000.0
MaxFireSpeed = 48000.1
EnergyFireCost = 3703.7128215950192
ReloadTime = 10.7078125
Projectile = "_buzzsaw39"
