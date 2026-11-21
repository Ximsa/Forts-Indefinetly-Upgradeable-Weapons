local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head45",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head45"
NodeEffects = {}
MinFireSpeed = 54000.0
MaxFireSpeed = 54000.1
EnergyFireCost = 6590.907312701499
MetalFireCost = 247.15902422630634
ReloadTime = 5.8359375
Projectile = "_shotgun45"
RoundsEachBurst = 10