local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base20",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base20"
NodeEffects = {}
MinFireSpeed = 975.0
MaxFireSpeed = 975.1
EnergyFireCost = 4241.948358653654
MetalFireCost = 106.04870896634137
ReloadTime = 10.125
Projectile = "_rocket20"
