local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head28"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 9150.0
MaxFireSpeed = 9150.1
EnergyFireCost = 16964.16974343765
MetalFireCost = 242.34528204910924
ReloadTime = 19.53125
Projectile = "_grenade28"
FireStdDev =0.0015255536888770915
FireStdDevAuto =0.0007627768444385457
