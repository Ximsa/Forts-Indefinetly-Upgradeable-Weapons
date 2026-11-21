local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base42",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base42"
NodeEffects = {}
MinFireSpeed = 1525.0
MaxFireSpeed = 1525.1
EnergyFireCost = 9088.015038220237
MetalFireCost = 227.20037595550605
ReloadTime = 8.0625
Projectile = "_rocket42"
