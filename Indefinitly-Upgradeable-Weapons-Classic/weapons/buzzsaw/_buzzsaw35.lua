local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base35",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base35"
NodeEffects = {}
MinFireSpeed = 44000.0
MaxFireSpeed = 44000.1
EnergyFireCost = 3365.542928041405
ReloadTime = 11.1890625
Projectile = "_buzzsaw35"
