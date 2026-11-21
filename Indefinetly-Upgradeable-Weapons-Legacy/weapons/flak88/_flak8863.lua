local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel63"
NodeEffects = {}
MinFireSpeed = 32800.0
MaxFireSpeed = 32800.1
EnergyFireCost = 20073.914058663948
MetalFireCost = 518.0364918364892
ReloadTime = 2.79296875
Projectile = "_cannon88he63"
FireStdDev =1.3571364799474417e-05
FireStdDevAuto =1.3571364799474417e-05
