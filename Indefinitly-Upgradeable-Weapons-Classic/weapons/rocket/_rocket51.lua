local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base51",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base51"
NodeEffects = {}
MinFireSpeed = 1750.0
MaxFireSpeed = 1750.1
EnergyFireCost = 11598.89325603931
MetalFireCost = 289.97233140098285
ReloadTime = 7.21875
Projectile = "_rocket51"
