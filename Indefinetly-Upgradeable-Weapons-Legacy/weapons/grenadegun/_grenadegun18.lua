local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head18"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 7150.0
MaxFireSpeed = 7150.1
EnergyFireCost = 11310.661078828163
MetalFireCost = 161.58087255468803
ReloadTime = 21.484375
Projectile = "_grenade18"
FireStdDev =0.0039568933780027
FireStdDevAuto =0.00197844668900135
