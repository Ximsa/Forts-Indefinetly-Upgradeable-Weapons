local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base8",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base8"
NodeEffects = {}
MinFireSpeed = 675.0
MaxFireSpeed = 675.1
EnergyFireCost = 2217.9816513633523
MetalFireCost = 55.44954128408381
ReloadTime = 11.25
Projectile = "_rocket8"
