local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head54"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 14350.0
MaxFireSpeed = 14350.1
EnergyFireCost = 36507.290177470175
MetalFireCost = 521.5327168210024
ReloadTime = 14.453125
Projectile = "_grenade54"
FireStdDev =0.0001280022731705576
FireStdDevAuto =6.40011365852788e-05
