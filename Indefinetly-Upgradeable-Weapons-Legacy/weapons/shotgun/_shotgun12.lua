local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head12",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head12"
NodeEffects = {}
MinFireSpeed = 21000.0
MaxFireSpeed = 21000.1
EnergyFireCost = 1900.8374148753458
MetalFireCost = 71.28140305782547
ReloadTime = 8.15625
Projectile = "_shotgun12"
RoundsEachBurst = 10