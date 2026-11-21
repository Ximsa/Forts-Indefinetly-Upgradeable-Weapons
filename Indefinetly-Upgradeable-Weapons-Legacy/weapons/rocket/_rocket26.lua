local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base26",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base26"
NodeEffects = {}
MinFireSpeed = 1125.0
MaxFireSpeed = 1125.1
EnergyFireCost = 5404.210794451038
MetalFireCost = 135.10526986127599
ReloadTime = 9.5625
Projectile = "_rocket26"
