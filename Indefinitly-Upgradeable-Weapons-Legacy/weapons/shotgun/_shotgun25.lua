local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head25",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head25"
NodeEffects = {}
MinFireSpeed = 34000.0
MaxFireSpeed = 34000.1
EnergyFireCost = 3468.6101625114507
MetalFireCost = 130.07288109417942
ReloadTime = 7.2421875
Projectile = "_shotgun25"
RoundsEachBurst = 10