local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head43",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head43"
NodeEffects = {}
MinFireSpeed = 52000.0
MaxFireSpeed = 52000.1
EnergyFireCost = 6233.343515461619
MetalFireCost = 233.75038182981083
ReloadTime = 5.9765625
Projectile = "_shotgun43"
RoundsEachBurst = 10