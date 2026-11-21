local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head17",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head17"
NodeEffects = {}
MinFireSpeed = 26000.0
MaxFireSpeed = 26000.1
EnergyFireCost = 2466.750976861547
MetalFireCost = 92.50316163230802
ReloadTime = 7.8046875
Projectile = "_shotgun17"
RoundsEachBurst = 10