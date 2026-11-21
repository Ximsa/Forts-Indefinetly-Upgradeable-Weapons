local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel61"
NodeEffects = {}
MinFireSpeed = 32000.0
MaxFireSpeed = 32000.1
EnergyFireCost = 19158.12354657693
MetalFireCost = 494.40318829875974
ReloadTime = 2.87890625
Projectile = "_cannon88he61"
FireStdDev =1.6421351407364048e-05
FireStdDevAuto =1.6421351407364048e-05
