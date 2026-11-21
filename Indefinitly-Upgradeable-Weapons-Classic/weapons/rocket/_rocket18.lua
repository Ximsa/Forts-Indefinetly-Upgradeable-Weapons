local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base18",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base18"
NodeEffects = {}
MinFireSpeed = 925.0
MaxFireSpeed = 925.1
EnergyFireCost = 3877.940941312513
MetalFireCost = 96.94852353281283
ReloadTime = 10.3125
Projectile = "_rocket18"
