local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head54",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head54"
NodeEffects = {}
MinFireSpeed = 63000.0
MaxFireSpeed = 63000.1
EnergyFireCost = 8344.523469136037
MetalFireCost = 312.91963009260144
ReloadTime = 5.203125
Projectile = "_shotgun54"
RoundsEachBurst = 10