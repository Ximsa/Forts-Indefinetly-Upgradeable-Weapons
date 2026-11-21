local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head61",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head61"
NodeEffects = {}
MinFireSpeed = 70000.0
MaxFireSpeed = 70000.1
EnergyFireCost = 9888.063765975194
MetalFireCost = 370.8023912240698
ReloadTime = 4.7109375
Projectile = "_shotgun61"
RoundsEachBurst = 10