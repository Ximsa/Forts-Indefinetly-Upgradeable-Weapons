local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head19",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head19"
NodeEffects = {}
MinFireSpeed = 28000.0
MaxFireSpeed = 28000.1
EnergyFireCost = 2705.6891790136806
MetalFireCost = 101.46334421301303
ReloadTime = 7.6640625
Projectile = "_shotgun19"
RoundsEachBurst = 10