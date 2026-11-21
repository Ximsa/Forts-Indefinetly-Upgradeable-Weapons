local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base27",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base27"
NodeEffects = {}
MinFireSpeed = 36000.0
MaxFireSpeed = 36000.1
EnergyFireCost = 2748.985693121254
ReloadTime = 12.1515625
Projectile = "_buzzsaw27"
