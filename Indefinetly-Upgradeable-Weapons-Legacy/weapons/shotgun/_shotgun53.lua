local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head53",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head53"
NodeEffects = {}
MinFireSpeed = 62000.0
MaxFireSpeed = 62000.1
EnergyFireCost = 8137.376954226252
MetalFireCost = 305.1516357834845
ReloadTime = 5.2734375
Projectile = "_shotgun53"
RoundsEachBurst = 10