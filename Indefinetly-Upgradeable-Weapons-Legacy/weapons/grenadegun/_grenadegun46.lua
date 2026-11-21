local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head46"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 12750.0
MaxFireSpeed = 12750.1
EnergyFireCost = 29635.76979764827
MetalFireCost = 423.36813996640376
ReloadTime = 16.015625
Projectile = "_grenade46"
FireStdDev =0.0002743842404229706
FireStdDevAuto =0.0001371921202114853
