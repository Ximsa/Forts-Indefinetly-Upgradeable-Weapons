local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head32"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 15200.0
MaxFireSpeed = 15200.1
EnergyFireCost = 2504.918019378241
MetalFireCost = 166.9945346252161
ReloadTime = 4.875
Projectile = "_musket32"
FireStdDev =0.001041973696384872
FireStdDevAuto =0.002083947392769744
