local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head50"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 13550.0
MaxFireSpeed = 13550.1
EnergyFireCost = 32965.02678657444
MetalFireCost = 470.9289540939204
ReloadTime = 15.234375
Projectile = "_grenade50"
FireStdDev =0.00018740812814901342
FireStdDevAuto =9.370406407450671e-05
