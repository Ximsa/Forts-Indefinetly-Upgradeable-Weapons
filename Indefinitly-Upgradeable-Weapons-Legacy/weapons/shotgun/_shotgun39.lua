local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head39",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head39"
NodeEffects = {}
MinFireSpeed = 48000.0
MaxFireSpeed = 48000.1
EnergyFireCost = 5550.634584564907
MetalFireCost = 208.14879692118407
ReloadTime = 6.2578125
Projectile = "_shotgun39"
RoundsEachBurst = 10