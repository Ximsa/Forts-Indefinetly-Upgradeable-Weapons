local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head9",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head9"
NodeEffects = {}
MinFireSpeed = 18000.0
MaxFireSpeed = 18000.1
EnergyFireCost = 1581.7584097772697
MetalFireCost = 59.31594036664762
ReloadTime = 8.3671875
Projectile = "_shotgun9"
RoundsEachBurst = 10