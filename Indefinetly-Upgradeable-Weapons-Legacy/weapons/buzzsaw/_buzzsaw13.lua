local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base13",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base13"
NodeEffects = {}
MinFireSpeed = 22000.0
MaxFireSpeed = 22000.1
EnergyFireCost = 1837.986242970651
ReloadTime = 13.8359375
Projectile = "_buzzsaw13"
