local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head62",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head62"
NodeEffects = {}
MinFireSpeed = 71000.0
MaxFireSpeed = 71000.1
EnergyFireCost = 10122.564762318556
MetalFireCost = 379.59617858694594
ReloadTime = 4.640625
Projectile = "_shotgun62"
RoundsEachBurst = 10