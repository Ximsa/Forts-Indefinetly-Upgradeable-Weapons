local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head49",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head49"
NodeEffects = {}
MinFireSpeed = 58000.0
MaxFireSpeed = 58000.1
EnergyFireCost = 7340.17306141807
MetalFireCost = 275.2564898031777
ReloadTime = 5.5546875
Projectile = "_shotgun49"
RoundsEachBurst = 10