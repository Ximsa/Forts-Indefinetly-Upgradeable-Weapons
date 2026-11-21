local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head31"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 9750.0
MaxFireSpeed = 9750.1
EnergyFireCost = 18838.34654156328
MetalFireCost = 269.1192363080468
ReloadTime = 18.9453125
Projectile = "_grenade31"
FireStdDev =0.0011461710660233592
FireStdDevAuto =0.0005730855330116796
