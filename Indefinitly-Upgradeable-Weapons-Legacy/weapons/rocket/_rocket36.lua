local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base36",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base36"
NodeEffects = {}
MinFireSpeed = 1375.0
MaxFireSpeed = 1375.1
EnergyFireCost = 7598.522526369684
MetalFireCost = 189.96306315924213
ReloadTime = 8.625
Projectile = "_rocket36"
