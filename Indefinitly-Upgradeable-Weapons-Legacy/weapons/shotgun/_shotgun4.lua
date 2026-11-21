local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head4",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head4"
NodeEffects = {}
MinFireSpeed = 13000.0
MaxFireSpeed = 13000.1
EnergyFireCost = 1081.8585205078125
MetalFireCost = 40.56969451904297
ReloadTime = 8.71875
Projectile = "_shotgun4"
RoundsEachBurst = 10