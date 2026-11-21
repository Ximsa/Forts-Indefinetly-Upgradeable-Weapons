local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head63"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 16150.0
MaxFireSpeed = 16150.1
EnergyFireCost = 45328.19303569281
MetalFireCost = 647.5456147956116
ReloadTime = 12.6953125
Projectile = "_grenade63"
FireStdDev =5.428545919789767e-05
FireStdDevAuto =2.7142729598948835e-05
