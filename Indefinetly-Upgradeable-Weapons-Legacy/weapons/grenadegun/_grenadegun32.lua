local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head32"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 9950.0
MaxFireSpeed = 9950.1
EnergyFireCost = 19482.695706275208
MetalFireCost = 278.3242243753601
ReloadTime = 18.75
Projectile = "_grenade32"
FireStdDev =0.001041973696384872
FireStdDevAuto =0.000520986848192436
