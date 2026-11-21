local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head42"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 11950.0
MaxFireSpeed = 11950.1
EnergyFireCost = 26506.71052814237
MetalFireCost = 378.6672932591766
ReloadTime = 16.796875
Projectile = "_grenade42"
FireStdDev =0.0004017259664032714
FireStdDevAuto =0.0002008629832016357
