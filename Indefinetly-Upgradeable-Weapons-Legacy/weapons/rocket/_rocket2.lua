local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base2",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base2"
NodeEffects = {}
MinFireSpeed = 525.0
MaxFireSpeed = 525.1
EnergyFireCost = 1338.75
MetalFireCost = 33.46875
ReloadTime = 11.8125
Projectile = "_rocket2"
