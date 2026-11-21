local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base56",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base56"
NodeEffects = {}
MinFireSpeed = 1875.0
MaxFireSpeed = 1875.1
EnergyFireCost = 13152.86559708243
MetalFireCost = 328.8216399270608
ReloadTime = 6.75
Projectile = "_rocket56"
