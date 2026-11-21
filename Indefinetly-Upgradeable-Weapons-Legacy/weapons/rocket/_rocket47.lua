local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base47",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base47"
NodeEffects = {}
MinFireSpeed = 1650.0
MaxFireSpeed = 1650.1
EnergyFireCost = 10439.598411681092
MetalFireCost = 260.98996029202743
ReloadTime = 7.59375
Projectile = "_rocket47"
