local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head60",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head60"
NodeEffects = {}
MinFireSpeed = 69000.0
MaxFireSpeed = 69000.1
EnergyFireCost = 9657.170477267882
MetalFireCost = 362.1438928975457
ReloadTime = 4.78125
Projectile = "_shotgun60"
RoundsEachBurst = 10