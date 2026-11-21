local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base64",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base64"
NodeEffects = {}
MinFireSpeed = 2075.0
MaxFireSpeed = 2075.1
EnergyFireCost = 15903.92436064303
MetalFireCost = 397.59810901607585
ReloadTime = 6.0
Projectile = "_rocket64"
