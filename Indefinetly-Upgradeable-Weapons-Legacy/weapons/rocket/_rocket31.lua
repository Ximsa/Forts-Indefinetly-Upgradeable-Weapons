local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base31",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base31"
NodeEffects = {}
MinFireSpeed = 1250.0
MaxFireSpeed = 1250.1
EnergyFireCost = 6458.861671393124
MetalFireCost = 161.47154178482816
ReloadTime = 9.09375
Projectile = "_rocket31"
