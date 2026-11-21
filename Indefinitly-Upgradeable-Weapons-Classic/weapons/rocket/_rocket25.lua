local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base25",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base25"
NodeEffects = {}
MinFireSpeed = 1100.0
MaxFireSpeed = 1100.1
EnergyFireCost = 5202.9152437671755
MetalFireCost = 130.07288109417942
ReloadTime = 9.65625
Projectile = "_rocket25"
