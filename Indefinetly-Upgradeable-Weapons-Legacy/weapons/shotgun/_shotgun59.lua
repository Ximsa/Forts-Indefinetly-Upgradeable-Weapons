local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head59",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head59"
NodeEffects = {}
MinFireSpeed = 68000.0
MaxFireSpeed = 68000.1
EnergyFireCost = 9429.829393002223
MetalFireCost = 353.61860223758345
ReloadTime = 4.8515625
Projectile = "_shotgun59"
RoundsEachBurst = 10