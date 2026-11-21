local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head35",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head35"
NodeEffects = {}
MinFireSpeed = 44000.0
MaxFireSpeed = 44000.1
EnergyFireCost = 4908.978889104203
MetalFireCost = 184.08670834140764
ReloadTime = 6.5390625
Projectile = "_shotgun35"
RoundsEachBurst = 10