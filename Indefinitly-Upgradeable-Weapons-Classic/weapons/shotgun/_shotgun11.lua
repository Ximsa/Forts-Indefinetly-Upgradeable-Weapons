local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head11",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head11"
NodeEffects = {}
MinFireSpeed = 20000.0
MaxFireSpeed = 20000.1
EnergyFireCost = 1792.8245315695713
MetalFireCost = 67.23091993385893
ReloadTime = 8.2265625
Projectile = "_shotgun11"
RoundsEachBurst = 10