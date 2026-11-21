local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base10",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base10"
NodeEffects = {}
MinFireSpeed = 19000.0
MaxFireSpeed = 19000.1
EnergyFireCost = 1667.1954325982642
ReloadTime = 14.196875
Projectile = "_buzzsaw10"
