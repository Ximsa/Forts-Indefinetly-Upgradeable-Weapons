local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base48",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base48"
NodeEffects = {}
MinFireSpeed = 1675.0
MaxFireSpeed = 1675.1
EnergyFireCost = 10722.71713686361
MetalFireCost = 268.06792842159035
ReloadTime = 7.5
Projectile = "_rocket48"
