local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head8"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 5150.0
MaxFireSpeed = 5150.1
EnergyFireCost = 6469.1131498097775
MetalFireCost = 92.41590214013968
ReloadTime = 23.4375
Projectile = "_grenade8"
FireStdDev =0.01026316236461413
FireStdDevAuto =0.005131581182307065
