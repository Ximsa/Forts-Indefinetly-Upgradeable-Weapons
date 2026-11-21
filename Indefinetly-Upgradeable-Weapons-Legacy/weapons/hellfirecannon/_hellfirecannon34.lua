local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel34"
NodeEffects = {}
MinFireSpeed = 15900.0
MaxFireSpeed = 15900.1
EnergyFireCost = 17830.0758982309
MetalFireCost = 445.75189745577256
ReloadTime = 19.09375
Projectile = "_hellfirecannon34"
FireStdDev =0.00043056764313424456
FireStdDevAuto =0.0005166811717610935
