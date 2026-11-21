local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head64"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 16350.0
MaxFireSpeed = 16350.1
EnergyFireCost = 46386.446051875515
MetalFireCost = 662.6635150267931
ReloadTime = 12.5
Projectile = "_grenade64"
FireStdDev =4.935041745263424e-05
FireStdDevAuto =2.467520872631712e-05
