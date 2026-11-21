local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head57",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head57"
NodeEffects = {}
MinFireSpeed = 66000.0
MaxFireSpeed = 66000.1
EnergyFireCost = 8985.586081357895
MetalFireCost = 336.9594780509211
ReloadTime = 4.9921875
Projectile = "_shotgun57"
RoundsEachBurst = 10