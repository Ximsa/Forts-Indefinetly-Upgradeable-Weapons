local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base24",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base24"
NodeEffects = {}
MinFireSpeed = 1075.0
MaxFireSpeed = 1075.1
EnergyFireCost = 5004.716547709219
MetalFireCost = 125.11791369273051
ReloadTime = 9.75
Projectile = "_rocket24"
