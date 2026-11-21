local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head16",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head16"
NodeEffects = {}
MinFireSpeed = 25000.0
MaxFireSpeed = 25000.1
EnergyFireCost = 2350.031731063677
MetalFireCost = 88.1261899148879
ReloadTime = 7.875
Projectile = "_shotgun16"
RoundsEachBurst = 10