local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head10"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 5550.0
MaxFireSpeed = 5550.1
EnergyFireCost = 7378.321059068923
MetalFireCost = 105.40458655812746
ReloadTime = 23.046875
Projectile = "_grenade10"
FireStdDev =0.008481952367449693
FireStdDevAuto =0.004240976183724847
