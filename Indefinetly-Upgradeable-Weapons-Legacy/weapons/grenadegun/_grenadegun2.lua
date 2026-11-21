local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head2"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 3950.0
MaxFireSpeed = 3950.1
EnergyFireCost = 3904.6875
MetalFireCost = 55.78125
ReloadTime = 24.609375
Projectile = "_grenade2"
FireStdDev =0.01818181818181818
FireStdDevAuto =0.00909090909090909
