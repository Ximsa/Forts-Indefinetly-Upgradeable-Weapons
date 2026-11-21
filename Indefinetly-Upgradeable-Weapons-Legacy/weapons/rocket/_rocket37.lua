local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base37",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base37"
NodeEffects = {}
MinFireSpeed = 1400.0
MaxFireSpeed = 1400.1
EnergyFireCost = 7837.24944084421
MetalFireCost = 195.9312360211053
ReloadTime = 8.53125
Projectile = "_rocket37"
