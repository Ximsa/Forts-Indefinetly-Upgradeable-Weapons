local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head33",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head33"
NodeEffects = {}
MinFireSpeed = 42000.0
MaxFireSpeed = 42000.1
EnergyFireCost = 4602.768646099601
MetalFireCost = 172.60382422873508
ReloadTime = 6.6796875
Projectile = "_shotgun33"
RoundsEachBurst = 10