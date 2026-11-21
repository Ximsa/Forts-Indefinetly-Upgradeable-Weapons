local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base45",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base45"
NodeEffects = {}
MinFireSpeed = 1600.0
MaxFireSpeed = 1600.1
EnergyFireCost = 9886.360969052248
MetalFireCost = 247.15902422630634
ReloadTime = 7.78125
Projectile = "_rocket45"
