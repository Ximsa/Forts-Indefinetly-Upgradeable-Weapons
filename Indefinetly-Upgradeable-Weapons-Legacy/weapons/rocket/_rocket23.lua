local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base23",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base23"
NodeEffects = {}
MinFireSpeed = 1050.0
MaxFireSpeed = 1050.1
EnergyFireCost = 4809.567062359847
MetalFireCost = 120.23917655899619
ReloadTime = 9.84375
Projectile = "_rocket23"
