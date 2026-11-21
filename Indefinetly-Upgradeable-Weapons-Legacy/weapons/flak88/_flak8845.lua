local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel45"
NodeEffects = {}
MinFireSpeed = 25600.0
MaxFireSpeed = 25600.1
EnergyFireCost = 12769.882918359157
MetalFireCost = 329.54536563507503
ReloadTime = 3.56640625
Projectile = "_cannon88he45"
FireStdDev =7.545566611631692e-05
FireStdDevAuto =7.545566611631692e-05
