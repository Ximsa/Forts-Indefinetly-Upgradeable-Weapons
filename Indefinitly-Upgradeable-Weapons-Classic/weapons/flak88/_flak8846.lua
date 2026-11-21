local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel46"
NodeEffects = {}
MinFireSpeed = 26000.0
MaxFireSpeed = 26000.1
EnergyFireCost = 13124.412338958518
MetalFireCost = 338.6945119731231
ReloadTime = 3.5234375
Projectile = "_cannon88he46"
FireStdDev =6.859606010574265e-05
FireStdDevAuto =6.859606010574265e-05
