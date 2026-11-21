local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head14",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head14"
NodeEffects = {}
MinFireSpeed = 23000.0
MaxFireSpeed = 23000.1
EnergyFireCost = 2121.9526557246913
MetalFireCost = 79.57322458967593
ReloadTime = 8.015625
Projectile = "_shotgun14"
RoundsEachBurst = 10