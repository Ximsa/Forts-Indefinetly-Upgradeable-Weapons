local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head15"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 6550.0
MaxFireSpeed = 6550.1
EnergyFireCost = 9778.598226120455
MetalFireCost = 139.69426037314935
ReloadTime = 22.0703125
Projectile = "_grenade15"
FireStdDev =0.005266625086121595
FireStdDevAuto =0.0026333125430607974
