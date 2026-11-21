local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head40"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 16800.0
MaxFireSpeed = 16800.1
EnergyFireCost = 3216.0168280961625
MetalFireCost = 214.40112187307759
ReloadTime = 4.46875
Projectile = "_musket40"
FireStdDev =0.0004860884193479585
FireStdDevAuto =0.000972176838695917
