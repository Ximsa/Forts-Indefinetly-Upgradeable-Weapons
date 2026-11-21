local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base25",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base25"
NodeEffects = {}
MinFireSpeed = 34000.0
MaxFireSpeed = 34000.1
EnergyFireCost = 2606.429680242522
ReloadTime = 12.3921875
Projectile = "_buzzsaw25"
