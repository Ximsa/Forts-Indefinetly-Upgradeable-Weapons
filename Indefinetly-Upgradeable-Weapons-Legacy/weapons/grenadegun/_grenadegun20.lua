local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head20"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 7550.0
MaxFireSpeed = 7550.1
EnergyFireCost = 12372.34937940649
MetalFireCost = 176.7478482772356
ReloadTime = 21.09375
Projectile = "_grenade20"
FireStdDev =0.0032701598165311564
FireStdDevAuto =0.0016350799082655782
