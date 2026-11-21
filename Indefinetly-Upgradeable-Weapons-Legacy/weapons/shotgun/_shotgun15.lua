local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head15",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head15"
NodeEffects = {}
MinFireSpeed = 24000.0
MaxFireSpeed = 24000.1
EnergyFireCost = 2235.1081659703896
MetalFireCost = 83.81655622388962
ReloadTime = 7.9453125
Projectile = "_shotgun15"
RoundsEachBurst = 10