local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base43",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base43"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 1550.1
EnergyFireCost = 9350.015273192428
MetalFireCost = 233.75038182981083
ReloadTime = 7.96875
Projectile = "_rocket43"
