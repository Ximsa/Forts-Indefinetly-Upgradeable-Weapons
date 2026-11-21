local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head26",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head26"
NodeEffects = {}
MinFireSpeed = 35000.0
MaxFireSpeed = 35000.1
EnergyFireCost = 3602.807196300692
MetalFireCost = 135.10526986127599
ReloadTime = 7.171875
Projectile = "_shotgun26"
RoundsEachBurst = 10