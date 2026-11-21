local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head13",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head13"
NodeEffects = {}
MinFireSpeed = 22000.0
MaxFireSpeed = 22000.1
EnergyFireCost = 2010.537999482773
MetalFireCost = 75.395174980604
ReloadTime = 8.0859375
Projectile = "_shotgun13"
RoundsEachBurst = 10