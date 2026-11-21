local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base30",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base30"
NodeEffects = {}
MinFireSpeed = 39000.0
MaxFireSpeed = 39000.1
EnergyFireCost = 2971.2818755089734
ReloadTime = 11.790625
Projectile = "_buzzsaw30"
