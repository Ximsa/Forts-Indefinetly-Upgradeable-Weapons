local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base52",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base52"
NodeEffects = {}
MinFireSpeed = 1775.0
MaxFireSpeed = 1775.1
EnergyFireCost = 11900.125963164925
MetalFireCost = 297.5031490791232
ReloadTime = 7.125
Projectile = "_rocket52"
