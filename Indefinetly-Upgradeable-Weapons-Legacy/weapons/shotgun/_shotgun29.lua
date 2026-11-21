local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head29",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head29"
NodeEffects = {}
MinFireSpeed = 38000.0
MaxFireSpeed = 38000.1
EnergyFireCost = 4018.110833298025
MetalFireCost = 150.679156248676
ReloadTime = 6.9609375
Projectile = "_shotgun29"
RoundsEachBurst = 10