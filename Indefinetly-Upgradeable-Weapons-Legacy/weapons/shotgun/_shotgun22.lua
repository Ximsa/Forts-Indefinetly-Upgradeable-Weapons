local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head22",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head22"
NodeEffects = {}
MinFireSpeed = 31000.0
MaxFireSpeed = 31000.1
EnergyFireCost = 3078.27991785672
MetalFireCost = 115.43549691962701
ReloadTime = 7.453125
Projectile = "_shotgun22"
RoundsEachBurst = 10