local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head45"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 12550.0
MaxFireSpeed = 12550.1
EnergyFireCost = 28835.219493069068
MetalFireCost = 411.9317070438437
ReloadTime = 16.2109375
Projectile = "_grenade45"
FireStdDev =0.0003018226644652677
FireStdDevAuto =0.00015091133223263384
