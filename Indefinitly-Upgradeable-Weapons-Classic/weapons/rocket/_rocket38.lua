local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base38",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base38"
NodeEffects = {}
MinFireSpeed = 1425.0
MaxFireSpeed = 1425.1
EnergyFireCost = 8079.706463357401
MetalFireCost = 201.99266158393507
ReloadTime = 8.4375
Projectile = "_rocket38"
