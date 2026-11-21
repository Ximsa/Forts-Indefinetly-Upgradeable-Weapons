local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head23",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head23"
NodeEffects = {}
MinFireSpeed = 32000.0
MaxFireSpeed = 32000.1
EnergyFireCost = 3206.3780415732313
MetalFireCost = 120.23917655899619
ReloadTime = 7.3828125
Projectile = "_shotgun23"
RoundsEachBurst = 10