local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head53"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 14150.0
MaxFireSpeed = 14150.1
EnergyFireCost = 35601.02417473986
MetalFireCost = 508.58605963914073
ReloadTime = 14.6484375
Projectile = "_grenade53"
FireStdDev =0.00014080250048761336
FireStdDevAuto =7.040125024380668e-05
