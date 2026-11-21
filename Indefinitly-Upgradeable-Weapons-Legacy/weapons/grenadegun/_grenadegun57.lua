local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head57"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 14950.0
MaxFireSpeed = 14950.1
EnergyFireCost = 39311.9391059408
MetalFireCost = 561.5991300848686
ReloadTime = 13.8671875
Projectile = "_grenade57"
FireStdDev =9.617000238208683e-05
FireStdDevAuto =4.8085001191043417e-05
