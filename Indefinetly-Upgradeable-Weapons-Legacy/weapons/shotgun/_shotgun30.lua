local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head30",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head30"
NodeEffects = {}
MinFireSpeed = 39000.0
MaxFireSpeed = 39000.1
EnergyFireCost = 4160.893815068307
MetalFireCost = 156.03351806506157
ReloadTime = 6.890625
Projectile = "_shotgun30"
RoundsEachBurst = 10