local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head36"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 10750.0
MaxFireSpeed = 10750.1
EnergyFireCost = 22162.357368578247
MetalFireCost = 316.6051052654035
ReloadTime = 17.96875
Projectile = "_grenade36"
FireStdDev =0.0007116820547673462
FireStdDevAuto =0.0003558410273836731
