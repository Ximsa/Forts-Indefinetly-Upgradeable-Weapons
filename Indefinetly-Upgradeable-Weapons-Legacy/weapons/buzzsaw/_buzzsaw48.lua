local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base48",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base48"
NodeEffects = {}
MinFireSpeed = 57000.0
MaxFireSpeed = 57000.1
EnergyFireCost = 4545.819534573701
ReloadTime = 9.625
Projectile = "_buzzsaw48"
