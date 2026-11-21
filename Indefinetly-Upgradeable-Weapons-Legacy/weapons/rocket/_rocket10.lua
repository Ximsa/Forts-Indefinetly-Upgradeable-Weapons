local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base10",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base10"
NodeEffects = {}
MinFireSpeed = 725.0
MaxFireSpeed = 725.1
EnergyFireCost = 2529.710077395059
MetalFireCost = 63.24275193487649
ReloadTime = 11.0625
Projectile = "_rocket10"
