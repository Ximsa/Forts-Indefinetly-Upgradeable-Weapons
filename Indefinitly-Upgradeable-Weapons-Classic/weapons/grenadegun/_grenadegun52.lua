local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head52"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 13950.0
MaxFireSpeed = 13950.1
EnergyFireCost = 34708.70072589771
MetalFireCost = 495.83858179853854
ReloadTime = 14.84375
Projectile = "_grenade52"
FireStdDev =0.0001548827505363747
FireStdDevAuto =7.744137526818735e-05
