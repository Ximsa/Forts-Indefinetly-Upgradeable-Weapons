local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base26",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base26"
NodeEffects = {}
MinFireSpeed = 35000.0
MaxFireSpeed = 35000.1
EnergyFireCost = 2677.1551439963114
ReloadTime = 12.271875
Projectile = "_buzzsaw26"
