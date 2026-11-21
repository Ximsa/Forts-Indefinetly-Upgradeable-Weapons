local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base19",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base19"
NodeEffects = {}
MinFireSpeed = 28000.0
MaxFireSpeed = 28000.1
EnergyFireCost = 2204.349702453156
ReloadTime = 13.1140625
Projectile = "_buzzsaw19"
