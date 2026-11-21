local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base60",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base60"
NodeEffects = {}
MinFireSpeed = 1975.0
MaxFireSpeed = 1975.1
EnergyFireCost = 14485.755715901823
MetalFireCost = 362.1438928975457
ReloadTime = 6.375
Projectile = "_rocket60"
