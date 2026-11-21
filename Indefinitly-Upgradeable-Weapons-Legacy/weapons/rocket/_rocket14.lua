local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base14",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base14"
NodeEffects = {}
MinFireSpeed = 825.0
MaxFireSpeed = 825.1
EnergyFireCost = 3182.9289835870372
MetalFireCost = 79.57322458967593
ReloadTime = 10.6875
Projectile = "_rocket14"
