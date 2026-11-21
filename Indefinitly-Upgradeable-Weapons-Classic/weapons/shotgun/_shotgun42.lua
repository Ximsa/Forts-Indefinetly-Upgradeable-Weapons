local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head42",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head42"
NodeEffects = {}
MinFireSpeed = 51000.0
MaxFireSpeed = 51000.1
EnergyFireCost = 6058.676692146825
MetalFireCost = 227.20037595550605
ReloadTime = 6.046875
Projectile = "_shotgun42"
RoundsEachBurst = 10