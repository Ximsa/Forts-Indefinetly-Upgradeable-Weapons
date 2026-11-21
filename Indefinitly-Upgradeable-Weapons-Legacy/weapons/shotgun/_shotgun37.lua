local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head37",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head37"
NodeEffects = {}
MinFireSpeed = 46000.0
MaxFireSpeed = 46000.1
EnergyFireCost = 5224.832960562807
MetalFireCost = 195.9312360211053
ReloadTime = 6.3984375
Projectile = "_shotgun37"
RoundsEachBurst = 10