local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel11"
NodeEffects = {}
MinFireSpeed = 12000.0
MaxFireSpeed = 12000.1
EnergyFireCost = 3473.597529916045
MetalFireCost = 89.64122657847857
ReloadTime = 5.02734375
Projectile = "_cannon88he11"
FireStdDev =0.0019277164471476573
FireStdDevAuto =0.0019277164471476573
