local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel18"
NodeEffects = {}
MinFireSpeed = 14800.0
MaxFireSpeed = 14800.1
EnergyFireCost = 5009.00704919533
MetalFireCost = 129.26469804375043
ReloadTime = 4.7265625
Projectile = "_cannon88he18"
FireStdDev =0.000989223344500675
FireStdDevAuto =0.000989223344500675
