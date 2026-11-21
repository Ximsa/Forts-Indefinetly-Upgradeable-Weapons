local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head51"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 13750.0
MaxFireSpeed = 13750.1
EnergyFireCost = 33830.10533011467
MetalFireCost = 483.28721900163794
ReloadTime = 15.0390625
Projectile = "_grenade51"
FireStdDev =0.00017037102559001218
FireStdDevAuto =8.518551279500609e-05
