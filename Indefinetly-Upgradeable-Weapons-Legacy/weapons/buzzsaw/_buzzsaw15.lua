local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base15",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base15"
NodeEffects = {}
MinFireSpeed = 24000.0
MaxFireSpeed = 24000.1
EnergyFireCost = 1956.340790173584
ReloadTime = 13.5953125
Projectile = "_buzzsaw15"
