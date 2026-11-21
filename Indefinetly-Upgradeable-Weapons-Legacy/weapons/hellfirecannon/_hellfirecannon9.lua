local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel9"
NodeEffects = {}
MinFireSpeed = 8400.0
MaxFireSpeed = 8400.1
EnergyFireCost = 5931.594036664762
MetalFireCost = 148.28985091661903
ReloadTime = 24.171875
Projectile = "_hellfirecannon9"
FireStdDev =0.004665073802097332
FireStdDevAuto =0.005598088562516798
