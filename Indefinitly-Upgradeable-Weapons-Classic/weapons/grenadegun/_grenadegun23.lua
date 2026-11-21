local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head23"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 8150.0
MaxFireSpeed = 8150.1
EnergyFireCost = 14027.903931882889
MetalFireCost = 200.39862759832695
ReloadTime = 20.5078125
Projectile = "_grenade23"
FireStdDev =0.0024569194714734455
FireStdDevAuto =0.0012284597357367227
