local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head9"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 5350.0
MaxFireSpeed = 5350.1
EnergyFireCost = 6920.193042775555
MetalFireCost = 98.85990061107935
ReloadTime = 23.2421875
Projectile = "_grenade9"
FireStdDev =0.009330147604194663
FireStdDevAuto =0.004665073802097332
