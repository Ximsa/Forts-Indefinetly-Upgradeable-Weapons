local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel23"
NodeEffects = {}
MinFireSpeed = 16800.0
MaxFireSpeed = 16800.1
EnergyFireCost = 6212.357455548137
MetalFireCost = 160.31890207866158
ReloadTime = 4.51171875
Projectile = "_cannon88he23"
FireStdDev =0.0006142298678683614
FireStdDevAuto =0.0006142298678683614
