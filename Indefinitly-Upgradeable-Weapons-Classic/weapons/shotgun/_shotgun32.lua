local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/shotgun.lua")
path = tmp
Sprites={{Name = "shotgun-head32",States={Normal={Frames={{texture="mods/weapon_pack/weapons/shotgun/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="shotgun-head32"
NodeEffects = {}
MinFireSpeed = 41000.0
MaxFireSpeed = 41000.1
EnergyFireCost = 4453.187590005761
MetalFireCost = 166.9945346252161
ReloadTime = 6.75
Projectile = "_shotgun32"
RoundsEachBurst = 10