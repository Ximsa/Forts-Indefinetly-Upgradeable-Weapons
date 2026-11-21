local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head52",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head52"
NodeEffects = {}
MinFireSpeed = 61000.0
MaxFireSpeed = 61000.1
EnergyFireCost = 7933.417308776617
MetalFireCost = 297.5031490791232
ReloadTime = 5.34375
Projectile = "_shotgun52"
RoundsEachBurst = 10