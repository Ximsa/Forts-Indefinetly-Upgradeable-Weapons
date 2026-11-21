local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head27",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head27"
NodeEffects = {}
MinFireSpeed = 36000.0
MaxFireSpeed = 36000.1
EnergyFireCost = 3739.10105874289
MetalFireCost = 140.21628970285843
ReloadTime = 7.1015625
Projectile = "_shotgun27"
RoundsEachBurst = 10