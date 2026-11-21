local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base23",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base23"
NodeEffects = {}
MinFireSpeed = 32000.0
MaxFireSpeed = 32000.1
EnergyFireCost = 2468.22626515346
ReloadTime = 12.6328125
Projectile = "_buzzsaw23"
