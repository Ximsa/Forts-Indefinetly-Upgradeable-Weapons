local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head11"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 5750.0
MaxFireSpeed = 5750.1
EnergyFireCost = 7843.607325616875
MetalFireCost = 112.0515332230982
ReloadTime = 22.8515625
Projectile = "_grenade11"
FireStdDev =0.007710865788590629
FireStdDevAuto =0.0038554328942953147
