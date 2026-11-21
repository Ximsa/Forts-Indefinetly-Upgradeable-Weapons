local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head56"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 14750.0
MaxFireSpeed = 14750.1
EnergyFireCost = 38362.5246581571
MetalFireCost = 548.0360665451014
ReloadTime = 14.0625
Projectile = "_grenade56"
FireStdDev =0.00010578700262029552
FireStdDevAuto =5.289350131014776e-05
