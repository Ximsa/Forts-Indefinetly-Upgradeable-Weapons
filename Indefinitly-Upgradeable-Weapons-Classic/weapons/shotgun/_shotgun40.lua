local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head40",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head40"
NodeEffects = {}
MinFireSpeed = 49000.0
MaxFireSpeed = 49000.1
EnergyFireCost = 5717.363249948733
MetalFireCost = 214.40112187307759
ReloadTime = 6.1875
Projectile = "_shotgun40"
RoundsEachBurst = 10