local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head34"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 10350.0
MaxFireSpeed = 10350.1
EnergyFireCost = 20801.755214602723
MetalFireCost = 297.1679316371817
ReloadTime = 18.359375
Projectile = "_grenade34"
FireStdDev =0.0008611352862684891
FireStdDevAuto =0.00043056764313424456
