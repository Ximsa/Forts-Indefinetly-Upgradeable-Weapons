local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel59"
NodeEffects = {}
MinFireSpeed = 23400.0
MaxFireSpeed = 23400.1
EnergyFireCost = 35361.86022375835
MetalFireCost = 884.0465055939584
ReloadTime = 14.015625
Projectile = "_hellfirecannon59"
FireStdDev =3.9739670405821e-05
FireStdDevAuto =4.76876044869852e-05
