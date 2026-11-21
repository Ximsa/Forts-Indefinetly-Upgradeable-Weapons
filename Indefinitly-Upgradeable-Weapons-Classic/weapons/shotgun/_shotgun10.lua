local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head10",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head10"
NodeEffects = {}
MinFireSpeed = 19000.0
MaxFireSpeed = 19000.1
EnergyFireCost = 1686.4733849300394
MetalFireCost = 63.24275193487649
ReloadTime = 8.296875
Projectile = "_shotgun10"
RoundsEachBurst = 10