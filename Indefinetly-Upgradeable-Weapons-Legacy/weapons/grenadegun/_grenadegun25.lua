local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head25"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 8550.0
MaxFireSpeed = 8550.1
EnergyFireCost = 15175.1694609876
MetalFireCost = 216.78813515696567
ReloadTime = 20.1171875
Projectile = "_grenade25"
FireStdDev =0.0020305119598954093
FireStdDevAuto =0.0010152559799477046
