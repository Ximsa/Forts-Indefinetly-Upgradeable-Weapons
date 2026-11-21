local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head20"
NodeEffects = {}
MinFireSpeed = 15700.0
MaxFireSpeed = 15700.1
EnergyFireCost = 10604.870896634136
MetalFireCost = 106.04870896634137
ReloadTime = 25.3125
Projectile = "_sniperemp20"
FireStdDev =0.00016350799082655786
FireStdDevAuto =0.0006540319633062315
