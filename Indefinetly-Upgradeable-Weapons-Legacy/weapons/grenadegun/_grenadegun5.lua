local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head5"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 4550.0
MaxFireSpeed = 4550.1
EnergyFireCost = 5157.086199522018
MetalFireCost = 73.67265999317169
ReloadTime = 24.0234375
Projectile = "_grenade5"
FireStdDev =0.01366026910730141
FireStdDevAuto =0.006830134553650705
