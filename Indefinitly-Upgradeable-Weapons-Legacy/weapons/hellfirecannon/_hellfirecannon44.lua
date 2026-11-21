local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel44"
NodeEffects = {}
MinFireSpeed = 18900.0
MaxFireSpeed = 18900.1
EnergyFireCost = 24040.27315459016
MetalFireCost = 601.0068288647537
ReloadTime = 17.0625
Projectile = "_hellfirecannon44"
FireStdDev =0.00016600246545589724
FireStdDevAuto =0.0001992029585470767
