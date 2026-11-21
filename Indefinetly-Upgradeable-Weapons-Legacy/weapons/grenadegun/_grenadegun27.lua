local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head27"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 8950.0
MaxFireSpeed = 8950.1
EnergyFireCost = 16358.567132000147
MetalFireCost = 233.69381617143063
ReloadTime = 19.7265625
Projectile = "_grenade27"
FireStdDev =0.0016781090577648006
FireStdDevAuto =0.0008390545288824003
