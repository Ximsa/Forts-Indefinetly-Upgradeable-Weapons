local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head41"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 11750.0
MaxFireSpeed = 11750.1
EnergyFireCost = 25754.299596940178
MetalFireCost = 367.91856567057386
ReloadTime = 16.9921875
Projectile = "_grenade41"
FireStdDev =0.0004418985630435986
FireStdDevAuto =0.0002209492815217993
