local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head44"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 12350.0
MaxFireSpeed = 12350.1
EnergyFireCost = 28046.98534702185
MetalFireCost = 400.67121924316916
ReloadTime = 16.40625
Projectile = "_grenade44"
FireStdDev =0.0003320049309117945
FireStdDevAuto =0.00016600246545589724
