local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head34",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head34"
NodeEffects = {}
MinFireSpeed = 43000.0
MaxFireSpeed = 43000.1
EnergyFireCost = 4754.686906194907
MetalFireCost = 178.30075898230908
ReloadTime = 6.609375
Projectile = "_shotgun34"
RoundsEachBurst = 10