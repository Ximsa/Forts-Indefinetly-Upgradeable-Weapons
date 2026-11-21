local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel38"
NodeEffects = {}
MinFireSpeed = 22800.0
MaxFireSpeed = 22800.1
EnergyFireCost = 10436.287515169979
MetalFireCost = 269.32354877858006
ReloadTime = 3.8671875
Projectile = "_cannon88he38"
FireStdDev =0.00014704174685275747
FireStdDevAuto =0.00014704174685275747
