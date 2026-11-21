local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base4",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base4"
NodeEffects = {}
MinFireSpeed = 575.0
MaxFireSpeed = 575.1
EnergyFireCost = 1622.7877807617188
MetalFireCost = 40.56969451904297
ReloadTime = 11.625
Projectile = "_rocket4"
