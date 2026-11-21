local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head28",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head28"
NodeEffects = {}
MinFireSpeed = 37000.0
MaxFireSpeed = 37000.1
EnergyFireCost = 3877.524512785748
MetalFireCost = 145.4071692294656
ReloadTime = 7.03125
Projectile = "_shotgun28"
RoundsEachBurst = 10