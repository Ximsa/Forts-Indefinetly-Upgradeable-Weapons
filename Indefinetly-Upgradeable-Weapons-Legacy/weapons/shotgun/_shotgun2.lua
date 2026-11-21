local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head2",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head2"
NodeEffects = {}
MinFireSpeed = 11000.0
MaxFireSpeed = 11000.1
EnergyFireCost = 892.5
MetalFireCost = 33.46875
ReloadTime = 8.859375
Projectile = "_shotgun2"
RoundsEachBurst = 10