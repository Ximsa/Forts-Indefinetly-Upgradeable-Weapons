local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head58"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 15150.0
MaxFireSpeed = 15150.1
EnergyFireCost = 40276.18815447113
MetalFireCost = 575.3741164924447
ReloadTime = 13.671875
Projectile = "_grenade58"
FireStdDev =8.74272748928062e-05
FireStdDevAuto =4.37136374464031e-05
