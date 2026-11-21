local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head59"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 15350.0
MaxFireSpeed = 15350.1
EnergyFireCost = 41255.50359438474
MetalFireCost = 589.3643370626392
ReloadTime = 13.4765625
Projectile = "_grenade59"
FireStdDev =7.9479340811642e-05
FireStdDevAuto =3.9739670405821e-05
