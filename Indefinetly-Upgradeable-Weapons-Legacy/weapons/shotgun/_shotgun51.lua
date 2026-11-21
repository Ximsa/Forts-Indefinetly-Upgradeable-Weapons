local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head51",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head51"
NodeEffects = {}
MinFireSpeed = 60000.0
MaxFireSpeed = 60000.1
EnergyFireCost = 7732.595504026207
MetalFireCost = 289.97233140098285
ReloadTime = 5.4140625
Projectile = "_shotgun51"
RoundsEachBurst = 10