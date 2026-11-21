local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base28",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base28"
NodeEffects = {}
MinFireSpeed = 37000.0
MaxFireSpeed = 37000.1
EnergyFireCost = 2821.9385945762733
ReloadTime = 12.03125
Projectile = "_buzzsaw28"
