local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head41",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head41"
NodeEffects = {}
MinFireSpeed = 50000.0
MaxFireSpeed = 50000.1
EnergyFireCost = 5886.697050729182
MetalFireCost = 220.75113940234442
ReloadTime = 6.1171875
Projectile = "_shotgun41"
RoundsEachBurst = 10