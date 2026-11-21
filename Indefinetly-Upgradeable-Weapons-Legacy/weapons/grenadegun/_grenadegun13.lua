local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head13"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 6150.0
MaxFireSpeed = 6150.1
EnergyFireCost = 8796.103747737132
MetalFireCost = 125.65862496767332
ReloadTime = 22.4609375
Projectile = "_grenade13"
FireStdDev =0.006372616354207131
FireStdDevAuto =0.0031863081771035654
