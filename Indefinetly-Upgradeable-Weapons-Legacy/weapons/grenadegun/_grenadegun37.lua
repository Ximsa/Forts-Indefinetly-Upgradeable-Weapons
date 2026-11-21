local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head37"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 10950.0
MaxFireSpeed = 10950.1
EnergyFireCost = 22858.64420246228
MetalFireCost = 326.55206003517543
ReloadTime = 17.7734375
Projectile = "_grenade37"
FireStdDev =0.0006469836861521329
FireStdDevAuto =0.00032349184307606645
