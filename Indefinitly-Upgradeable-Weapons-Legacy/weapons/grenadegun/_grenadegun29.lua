local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head29"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 9350.0
MaxFireSpeed = 9350.1
EnergyFireCost = 17579.234895678863
MetalFireCost = 251.13192708112658
ReloadTime = 19.3359375
Projectile = "_grenade29"
FireStdDev =0.001386866989888265
FireStdDevAuto =0.0006934334949441325
