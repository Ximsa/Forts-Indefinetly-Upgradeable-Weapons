local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base34",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base34"
NodeEffects = {}
MinFireSpeed = 43000.0
MaxFireSpeed = 43000.1
EnergyFireCost = 3284.2268829946142
ReloadTime = 11.309375
Projectile = "_buzzsaw34"
