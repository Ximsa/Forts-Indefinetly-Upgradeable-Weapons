local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel56"
NodeEffects = {}
MinFireSpeed = 22500.0
MaxFireSpeed = 22500.1
EnergyFireCost = 32882.16399270608
MetalFireCost = 822.0540998176518
ReloadTime = 14.625
Projectile = "_hellfirecannon56"
FireStdDev =5.289350131014776e-05
FireStdDevAuto =6.347220157217732e-05
