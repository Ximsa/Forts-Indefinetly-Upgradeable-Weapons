local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head46",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head46"
NodeEffects = {}
MinFireSpeed = 55000.0
MaxFireSpeed = 55000.1
EnergyFireCost = 6773.89023946246
MetalFireCost = 254.02088397984238
ReloadTime = 5.765625
Projectile = "_shotgun46"
RoundsEachBurst = 10