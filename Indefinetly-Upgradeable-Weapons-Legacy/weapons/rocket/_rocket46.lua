local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base46",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base46"
NodeEffects = {}
MinFireSpeed = 1625.0
MaxFireSpeed = 1625.1
EnergyFireCost = 10160.83535919369
MetalFireCost = 254.02088397984238
ReloadTime = 7.6875
Projectile = "_rocket46"
