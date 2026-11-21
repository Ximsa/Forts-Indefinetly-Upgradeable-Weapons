local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base63",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base63"
NodeEffects = {}
MinFireSpeed = 2050.0
MaxFireSpeed = 2050.1
EnergyFireCost = 15541.094755094675
MetalFireCost = 388.527368877367
ReloadTime = 6.09375
Projectile = "_rocket63"
