local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head50",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head50"
NodeEffects = {}
MinFireSpeed = 59000.0
MaxFireSpeed = 59000.1
EnergyFireCost = 7534.863265502727
MetalFireCost = 282.55737245635237
ReloadTime = 5.484375
Projectile = "_shotgun50"
RoundsEachBurst = 10