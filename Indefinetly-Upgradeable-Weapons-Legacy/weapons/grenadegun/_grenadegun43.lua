local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head43"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 12150.0
MaxFireSpeed = 12150.1
EnergyFireCost = 27270.87788014459
MetalFireCost = 389.5839697163512
ReloadTime = 16.6015625
Projectile = "_grenade43"
FireStdDev =0.00036520542400297396
FireStdDevAuto =0.00018260271200148698
