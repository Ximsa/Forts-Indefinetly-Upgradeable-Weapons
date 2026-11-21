local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head48"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 13150.0
MaxFireSpeed = 13150.1
EnergyFireCost = 31274.591649185535
MetalFireCost = 446.7798807026504
ReloadTime = 15.625
Projectile = "_grenade48"
FireStdDev =0.00022676383506030627
FireStdDevAuto =0.00011338191753015314
