local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head44",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head44"
NodeEffects = {}
MinFireSpeed = 53000.0
MaxFireSpeed = 53000.1
EnergyFireCost = 6410.739507890707
MetalFireCost = 240.40273154590162
ReloadTime = 5.90625
Projectile = "_shotgun44"
RoundsEachBurst = 10