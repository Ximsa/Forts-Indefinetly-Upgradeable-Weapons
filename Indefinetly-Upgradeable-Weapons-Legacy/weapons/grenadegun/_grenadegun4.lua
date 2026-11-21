local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head4"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 4350.0
MaxFireSpeed = 4350.1
EnergyFireCost = 4733.13102722168
MetalFireCost = 67.61615753173828
ReloadTime = 24.21875
Projectile = "_grenade4"
FireStdDev =0.015026296018031552
FireStdDevAuto =0.007513148009015776
