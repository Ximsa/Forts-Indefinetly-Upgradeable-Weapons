local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base24",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base24"
NodeEffects = {}
MinFireSpeed = 33000.0
MaxFireSpeed = 33000.1
EnergyFireCost = 2536.792300546483
ReloadTime = 12.5125
Projectile = "_buzzsaw24"
