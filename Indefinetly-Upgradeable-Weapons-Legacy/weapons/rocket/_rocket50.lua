local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base50",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base50"
NodeEffects = {}
MinFireSpeed = 1725.0
MaxFireSpeed = 1725.1
EnergyFireCost = 11302.29489825409
MetalFireCost = 282.55737245635237
ReloadTime = 7.3125
Projectile = "_rocket50"
