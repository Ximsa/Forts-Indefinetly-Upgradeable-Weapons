local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base6",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base6"
NodeEffects = {}
MinFireSpeed = 625.0
MaxFireSpeed = 625.1
EnergyFireCost = 1915.77108733356
MetalFireCost = 47.894277183339
ReloadTime = 11.4375
Projectile = "_rocket6"
