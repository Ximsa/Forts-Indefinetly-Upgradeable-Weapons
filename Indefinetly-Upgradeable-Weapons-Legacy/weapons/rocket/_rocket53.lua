local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base53",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base53"
NodeEffects = {}
MinFireSpeed = 1800.0
MaxFireSpeed = 1800.1
EnergyFireCost = 12206.065431339377
MetalFireCost = 305.1516357834845
ReloadTime = 7.03125
Projectile = "_rocket53"
