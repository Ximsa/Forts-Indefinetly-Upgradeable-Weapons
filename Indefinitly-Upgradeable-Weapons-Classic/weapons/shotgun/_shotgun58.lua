local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head58",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head58"
NodeEffects = {}
MinFireSpeed = 67000.0
MaxFireSpeed = 67000.1
EnergyFireCost = 9205.985863879112
MetalFireCost = 345.22446989546677
ReloadTime = 4.921875
Projectile = "_shotgun58"
RoundsEachBurst = 10