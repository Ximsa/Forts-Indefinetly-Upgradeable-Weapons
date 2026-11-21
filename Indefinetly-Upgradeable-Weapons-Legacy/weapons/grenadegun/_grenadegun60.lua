local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head60"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 15550.0
MaxFireSpeed = 15550.1
EnergyFireCost = 42250.120838047
MetalFireCost = 603.5731548292429
ReloadTime = 13.28125
Projectile = "_grenade60"
FireStdDev =7.225394619240181e-05
FireStdDevAuto =3.612697309620091e-05
