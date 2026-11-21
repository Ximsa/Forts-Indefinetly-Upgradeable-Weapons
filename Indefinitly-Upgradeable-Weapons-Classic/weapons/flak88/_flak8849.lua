local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel49"
NodeEffects = {}
MinFireSpeed = 27200.0
MaxFireSpeed = 27200.1
EnergyFireCost = 14221.585306497509
MetalFireCost = 367.00865307090356
ReloadTime = 3.39453125
Projectile = "_cannon88he49"
FireStdDev =5.153723524097869e-05
FireStdDevAuto =5.153723524097869e-05
