local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head31",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head31"
NodeEffects = {}
MinFireSpeed = 40000.0
MaxFireSpeed = 40000.1
EnergyFireCost = 4305.907780928749
MetalFireCost = 161.47154178482816
ReloadTime = 6.8203125
Projectile = "_shotgun31"
RoundsEachBurst = 10