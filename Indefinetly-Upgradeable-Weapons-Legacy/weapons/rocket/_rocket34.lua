local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base34",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base34"
NodeEffects = {}
MinFireSpeed = 1325.0
MaxFireSpeed = 1325.1
EnergyFireCost = 7132.030359292361
MetalFireCost = 178.30075898230908
ReloadTime = 8.8125
Projectile = "_rocket34"
