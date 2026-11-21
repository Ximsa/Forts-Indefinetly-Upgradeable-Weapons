local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base16",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base16"
NodeEffects = {}
MinFireSpeed = 25000.0
MaxFireSpeed = 25000.1
EnergyFireCost = 2016.9086150200462
ReloadTime = 13.475
Projectile = "_buzzsaw16"
