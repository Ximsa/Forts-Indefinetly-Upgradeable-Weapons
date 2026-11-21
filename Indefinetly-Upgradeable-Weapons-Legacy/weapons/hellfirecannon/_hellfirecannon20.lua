local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel20"
NodeEffects = {}
MinFireSpeed = 11700.0
MaxFireSpeed = 11700.1
EnergyFireCost = 10604.870896634136
MetalFireCost = 265.1217724158534
ReloadTime = 21.9375
Projectile = "_hellfirecannon20"
FireStdDev =0.0016350799082655782
FireStdDevAuto =0.001962095889918694
