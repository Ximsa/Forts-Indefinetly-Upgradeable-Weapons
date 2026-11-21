local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head6"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 4750.0
MaxFireSpeed = 4750.1
EnergyFireCost = 5587.66567138955
MetalFireCost = 79.823795305565
ReloadTime = 23.828125
Projectile = "_grenade6"
FireStdDev =0.012418426461183098
FireStdDevAuto =0.006209213230591549
