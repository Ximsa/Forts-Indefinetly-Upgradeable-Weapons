local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base18",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base18"
NodeEffects = {}
MinFireSpeed = 27000.0
MaxFireSpeed = 27000.1
EnergyFireCost = 2140.8981685692615
ReloadTime = 13.234375
Projectile = "_buzzsaw18"
