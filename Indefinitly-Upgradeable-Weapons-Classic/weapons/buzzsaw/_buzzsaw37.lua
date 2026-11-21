local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base37",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base37"
NodeEffects = {}
MinFireSpeed = 46000.0
MaxFireSpeed = 46000.1
EnergyFireCost = 3532.006560296615
ReloadTime = 10.9484375
Projectile = "_buzzsaw37"
