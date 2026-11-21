local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel7"
NodeEffects = {}
MinFireSpeed = 10400.0
MaxFireSpeed = 10400.1
EnergyFireCost = 2668.202305323648
MetalFireCost = 68.85683368577156
ReloadTime = 5.19921875
Projectile = "_cannon88he7"
FireStdDev =0.002822369650268886
FireStdDevAuto =0.002822369650268886
