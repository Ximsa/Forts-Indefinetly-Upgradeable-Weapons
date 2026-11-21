local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head49"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 13350.0
MaxFireSpeed = 13350.1
EnergyFireCost = 32113.25714370406
MetalFireCost = 458.76081633862935
ReloadTime = 15.4296875
Projectile = "_grenade49"
FireStdDev =0.00020614894096391477
FireStdDevAuto =0.00010307447048195738
