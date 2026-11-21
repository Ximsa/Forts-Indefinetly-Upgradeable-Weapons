local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head22"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 7950.0
MaxFireSpeed = 7950.1
EnergyFireCost = 13467.474640623152
MetalFireCost = 192.392494866045
ReloadTime = 20.703125
Projectile = "_grenade22"
FireStdDev =0.00270261141862079
FireStdDevAuto =0.001351305709310395
