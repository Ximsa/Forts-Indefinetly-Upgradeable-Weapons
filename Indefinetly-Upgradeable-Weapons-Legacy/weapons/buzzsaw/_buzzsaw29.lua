local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base29",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base29"
NodeEffects = {}
MinFireSpeed = 38000.0
MaxFireSpeed = 38000.1
EnergyFireCost = 2896.0313851165274
ReloadTime = 11.9109375
Projectile = "_buzzsaw29"
