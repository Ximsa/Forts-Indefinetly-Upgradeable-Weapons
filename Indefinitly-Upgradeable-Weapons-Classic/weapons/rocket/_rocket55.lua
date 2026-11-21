local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base55",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base55"
NodeEffects = {}
MinFireSpeed = 1850.0
MaxFireSpeed = 1850.1
EnergyFireCost = 12832.359972511931
MetalFireCost = 320.80899931279833
ReloadTime = 6.84375
Projectile = "_rocket55"
