local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base22",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base22"
NodeEffects = {}
MinFireSpeed = 1025.0
MaxFireSpeed = 1025.1
EnergyFireCost = 4617.41987678508
MetalFireCost = 115.43549691962701
ReloadTime = 9.9375
Projectile = "_rocket22"
