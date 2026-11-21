local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel38"
NodeEffects = {}
MinFireSpeed = 17100.0
MaxFireSpeed = 17100.1
EnergyFireCost = 20199.266158393504
MetalFireCost = 504.98165395983756
ReloadTime = 18.28125
Projectile = "_hellfirecannon38"
FireStdDev =0.00029408349370551494
FireStdDevAuto =0.0003529001924466179
