local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base58",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base58"
NodeEffects = {}
MinFireSpeed = 1925.0
MaxFireSpeed = 1925.1
EnergyFireCost = 13808.978795818668
MetalFireCost = 345.22446989546677
ReloadTime = 6.5625
Projectile = "_rocket58"
