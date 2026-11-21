local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base57",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base57"
NodeEffects = {}
MinFireSpeed = 1900.0
MaxFireSpeed = 1900.1
EnergyFireCost = 13478.379122036842
MetalFireCost = 336.9594780509211
ReloadTime = 6.65625
Projectile = "_rocket57"
