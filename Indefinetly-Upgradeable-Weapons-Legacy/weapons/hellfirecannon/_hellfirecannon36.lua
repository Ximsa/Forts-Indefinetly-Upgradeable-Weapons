local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel36"
NodeEffects = {}
MinFireSpeed = 16500.0
MaxFireSpeed = 16500.1
EnergyFireCost = 18996.306315924212
MetalFireCost = 474.90765789810524
ReloadTime = 18.6875
Projectile = "_hellfirecannon36"
FireStdDev =0.0003558410273836731
FireStdDevAuto =0.0004270092328604077
