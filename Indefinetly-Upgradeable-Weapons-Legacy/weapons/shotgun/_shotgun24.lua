local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head24",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head24"
NodeEffects = {}
MinFireSpeed = 33000.0
MaxFireSpeed = 33000.1
EnergyFireCost = 3336.477698472813
MetalFireCost = 125.11791369273051
ReloadTime = 7.3125
Projectile = "_shotgun24"
RoundsEachBurst = 10