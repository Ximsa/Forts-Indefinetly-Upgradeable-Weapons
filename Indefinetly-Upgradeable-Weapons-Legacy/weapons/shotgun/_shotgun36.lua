local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head36",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head36"
NodeEffects = {}
MinFireSpeed = 45000.0
MaxFireSpeed = 45000.1
EnergyFireCost = 5065.681684246456
MetalFireCost = 189.96306315924213
ReloadTime = 6.46875
Projectile = "_shotgun36"
RoundsEachBurst = 10