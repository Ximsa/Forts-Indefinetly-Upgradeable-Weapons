local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head3",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head3"
NodeEffects = {}
MinFireSpeed = 12000.0
MaxFireSpeed = 12000.1
EnergyFireCost = 986.4453125
MetalFireCost = 36.99169921875
ReloadTime = 8.7890625
Projectile = "_shotgun3"
RoundsEachBurst = 10