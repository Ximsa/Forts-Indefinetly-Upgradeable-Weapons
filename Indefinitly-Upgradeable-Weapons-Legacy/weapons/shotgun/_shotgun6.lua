local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head6",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head6"
NodeEffects = {}
MinFireSpeed = 15000.0
MaxFireSpeed = 15000.1
EnergyFireCost = 1277.18072488904
MetalFireCost = 47.894277183339
ReloadTime = 8.578125
Projectile = "_shotgun6"
RoundsEachBurst = 10