local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head63",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head63"
NodeEffects = {}
MinFireSpeed = 72000.0
MaxFireSpeed = 72000.1
EnergyFireCost = 10360.729836729783
MetalFireCost = 388.527368877367
ReloadTime = 4.5703125
Projectile = "_shotgun63"
RoundsEachBurst = 10