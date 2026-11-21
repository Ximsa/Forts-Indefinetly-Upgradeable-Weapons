local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base33",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base33"
NodeEffects = {}
MinFireSpeed = 1300.0
MaxFireSpeed = 1300.1
EnergyFireCost = 6904.1529691494015
MetalFireCost = 172.60382422873508
ReloadTime = 8.90625
Projectile = "_rocket33"
