local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head20",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head20"
NodeEffects = {}
MinFireSpeed = 29000.0
MaxFireSpeed = 29000.1
EnergyFireCost = 2827.9655724357694
MetalFireCost = 106.04870896634137
ReloadTime = 7.59375
Projectile = "_shotgun20"
RoundsEachBurst = 10