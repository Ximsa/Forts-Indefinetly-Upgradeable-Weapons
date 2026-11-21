local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head38"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 11150.0
MaxFireSpeed = 11150.1
EnergyFireCost = 23565.810518125756
MetalFireCost = 336.654435973225
ReloadTime = 17.578125
Projectile = "_grenade38"
FireStdDev =0.0005881669874110299
FireStdDevAuto =0.00029408349370551494
