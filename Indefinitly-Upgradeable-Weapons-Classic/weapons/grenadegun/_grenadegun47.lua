local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head47"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 12950.0
MaxFireSpeed = 12950.1
EnergyFireCost = 30448.828700736525
MetalFireCost = 434.98326715337885
ReloadTime = 15.8203125
Projectile = "_grenade47"
FireStdDev =0.00024944021856633693
FireStdDevAuto =0.00012472010928316846
