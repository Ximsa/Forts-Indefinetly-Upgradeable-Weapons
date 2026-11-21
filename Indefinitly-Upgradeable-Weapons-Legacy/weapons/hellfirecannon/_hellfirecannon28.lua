local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel28"
NodeEffects = {}
MinFireSpeed = 14100.0
MaxFireSpeed = 14100.1
EnergyFireCost = 14540.716922946558
MetalFireCost = 363.5179230736639
ReloadTime = 20.3125
Projectile = "_hellfirecannon28"
FireStdDev =0.0007627768444385457
FireStdDevAuto =0.0009153322133262548
