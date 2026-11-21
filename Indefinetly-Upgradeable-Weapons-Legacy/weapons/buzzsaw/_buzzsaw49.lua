local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base49",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base49"
NodeEffects = {}
MinFireSpeed = 58000.0
MaxFireSpeed = 58000.1
EnergyFireCost = 4646.847964801415
ReloadTime = 9.5046875
Projectile = "_buzzsaw49"
