local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base16",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base16"
NodeEffects = {}
MinFireSpeed = 875.0
MaxFireSpeed = 875.1
EnergyFireCost = 3525.0475965955156
MetalFireCost = 88.1261899148879
ReloadTime = 10.5
Projectile = "_rocket16"
