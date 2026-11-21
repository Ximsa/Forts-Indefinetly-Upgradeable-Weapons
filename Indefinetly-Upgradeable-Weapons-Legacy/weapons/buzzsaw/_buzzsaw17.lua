local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base17",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base17"
NodeEffects = {}
MinFireSpeed = 26000.0
MaxFireSpeed = 26000.1
EnergyFireCost = 2078.4228121297347
ReloadTime = 13.3546875
Projectile = "_buzzsaw17"
