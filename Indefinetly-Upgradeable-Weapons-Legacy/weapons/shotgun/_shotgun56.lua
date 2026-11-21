local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head56",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head56"
NodeEffects = {}
MinFireSpeed = 65000.0
MaxFireSpeed = 65000.1
EnergyFireCost = 8768.57706472162
MetalFireCost = 328.8216399270608
ReloadTime = 5.0625
Projectile = "_shotgun56"
RoundsEachBurst = 10