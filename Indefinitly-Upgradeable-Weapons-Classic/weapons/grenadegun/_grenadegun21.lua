local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head21"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 7750.0
MaxFireSpeed = 7750.1
EnergyFireCost = 12915.667338459718
MetalFireCost = 184.50953340656739
ReloadTime = 20.8984375
Projectile = "_grenade21"
FireStdDev =0.0029728725604828694
FireStdDevAuto =0.0014864362802414347
