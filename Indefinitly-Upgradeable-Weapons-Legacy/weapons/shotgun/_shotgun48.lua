local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head48",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head48"
NodeEffects = {}
MinFireSpeed = 57000.0
MaxFireSpeed = 57000.1
EnergyFireCost = 7148.478091242407
MetalFireCost = 268.06792842159035
ReloadTime = 5.625
Projectile = "_shotgun48"
RoundsEachBurst = 10