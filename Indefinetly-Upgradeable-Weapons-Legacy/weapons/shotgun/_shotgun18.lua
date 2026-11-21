local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head18",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head18"
NodeEffects = {}
MinFireSpeed = 27000.0
MaxFireSpeed = 27000.1
EnergyFireCost = 2585.2939608750085
MetalFireCost = 96.94852353281283
ReloadTime = 7.734375
Projectile = "_shotgun18"
RoundsEachBurst = 10