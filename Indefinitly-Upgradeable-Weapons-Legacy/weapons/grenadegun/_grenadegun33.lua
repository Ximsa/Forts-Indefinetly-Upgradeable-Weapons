local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head33"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 10150.0
MaxFireSpeed = 10150.1
EnergyFireCost = 20137.11282668576
MetalFireCost = 287.67304038122506
ReloadTime = 18.5546875
Projectile = "_grenade33"
FireStdDev =0.0009472488148953381
FireStdDevAuto =0.00047362440744766905
