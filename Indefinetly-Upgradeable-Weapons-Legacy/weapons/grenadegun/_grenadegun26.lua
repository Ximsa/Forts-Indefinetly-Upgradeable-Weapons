local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head26"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 8750.0
MaxFireSpeed = 8750.1
EnergyFireCost = 15762.28148381553
MetalFireCost = 225.17544976879324
ReloadTime = 19.921875
Projectile = "_grenade26"
FireStdDev =0.001845919963541281
FireStdDevAuto =0.0009229599817706405
