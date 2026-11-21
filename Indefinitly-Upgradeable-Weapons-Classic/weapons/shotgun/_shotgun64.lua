local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head64",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head64"
NodeEffects = {}
MinFireSpeed = 73000.0
MaxFireSpeed = 73000.1
EnergyFireCost = 10602.616240428686
MetalFireCost = 397.59810901607585
ReloadTime = 4.5
Projectile = "_shotgun64"
RoundsEachBurst = 10