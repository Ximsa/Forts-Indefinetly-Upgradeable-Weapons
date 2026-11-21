local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head55",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head55"
NodeEffects = {}
MinFireSpeed = 64000.0
MaxFireSpeed = 64000.1
EnergyFireCost = 8554.906648341286
MetalFireCost = 320.80899931279833
ReloadTime = 5.1328125
Projectile = "_shotgun55"
RoundsEachBurst = 10