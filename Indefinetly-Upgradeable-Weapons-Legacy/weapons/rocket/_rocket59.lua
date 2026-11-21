local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base59",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base59"
NodeEffects = {}
MinFireSpeed = 1950.0
MaxFireSpeed = 1950.1
EnergyFireCost = 14144.744089503334
MetalFireCost = 353.61860223758345
ReloadTime = 6.46875
Projectile = "_rocket59"
