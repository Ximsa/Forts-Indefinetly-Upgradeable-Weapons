local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head24"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 8350.0
MaxFireSpeed = 8350.1
EnergyFireCost = 14597.08993081856
MetalFireCost = 208.5298561545508
ReloadTime = 20.3125
Projectile = "_grenade24"
FireStdDev =0.0022335631558849504
FireStdDevAuto =0.0011167815779424752
