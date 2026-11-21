local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base32",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base32"
NodeEffects = {}
MinFireSpeed = 41000.0
MaxFireSpeed = 41000.1
EnergyFireCost = 3125.3285947327668
ReloadTime = 11.55
Projectile = "_buzzsaw32"
