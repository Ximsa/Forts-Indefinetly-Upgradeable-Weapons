local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base61",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base61"
NodeEffects = {}
MinFireSpeed = 2000.0
MaxFireSpeed = 2000.1
EnergyFireCost = 14832.09564896279
MetalFireCost = 370.8023912240698
ReloadTime = 6.28125
Projectile = "_rocket61"
