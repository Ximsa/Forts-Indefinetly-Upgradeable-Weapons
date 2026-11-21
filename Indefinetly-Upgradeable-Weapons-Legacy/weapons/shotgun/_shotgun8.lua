local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head8",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head8"
NodeEffects = {}
MinFireSpeed = 17000.0
MaxFireSpeed = 17000.1
EnergyFireCost = 1478.6544342422349
MetalFireCost = 55.44954128408381
ReloadTime = 8.4375
Projectile = "_shotgun8"
RoundsEachBurst = 10