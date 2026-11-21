local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base17",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base17"
NodeEffects = {}
MinFireSpeed = 900.0
MaxFireSpeed = 900.1
EnergyFireCost = 3700.1264652923205
MetalFireCost = 92.50316163230802
ReloadTime = 10.40625
Projectile = "_rocket17"
