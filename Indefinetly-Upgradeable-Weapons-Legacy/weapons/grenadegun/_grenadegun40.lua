local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head40"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 11550.0
MaxFireSpeed = 11550.1
EnergyFireCost = 25013.464218525714
MetalFireCost = 357.3352031217958
ReloadTime = 17.1875
Projectile = "_grenade40"
FireStdDev =0.0004860884193479585
FireStdDevAuto =0.00024304420967397926
