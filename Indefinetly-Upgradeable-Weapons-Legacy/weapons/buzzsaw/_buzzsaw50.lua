local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base50",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base50"
NodeEffects = {}
MinFireSpeed = 59000.0
MaxFireSpeed = 59000.1
EnergyFireCost = 4749.454964251438
ReloadTime = 9.384375
Projectile = "_buzzsaw50"
