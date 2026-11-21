local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head38",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head38"
NodeEffects = {}
MinFireSpeed = 47000.0
MaxFireSpeed = 47000.1
EnergyFireCost = 5386.4709755716
MetalFireCost = 201.99266158393507
ReloadTime = 6.328125
Projectile = "_shotgun38"
RoundsEachBurst = 10