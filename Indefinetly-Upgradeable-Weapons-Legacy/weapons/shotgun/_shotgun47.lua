local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head47",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head47"
NodeEffects = {}
MinFireSpeed = 56000.0
MaxFireSpeed = 56000.1
EnergyFireCost = 6959.732274454062
MetalFireCost = 260.98996029202743
ReloadTime = 5.6953125
Projectile = "_shotgun47"
RoundsEachBurst = 10