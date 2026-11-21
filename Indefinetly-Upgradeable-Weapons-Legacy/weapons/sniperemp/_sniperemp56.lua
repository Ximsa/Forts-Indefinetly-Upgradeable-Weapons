local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head56"
NodeEffects = {}
MinFireSpeed = 26500.0
MaxFireSpeed = 26500.1
EnergyFireCost = 32882.16399270608
MetalFireCost = 328.8216399270608
ReloadTime = 16.875
Projectile = "_sniperemp56"
FireStdDev =5.289350131014774e-06
FireStdDevAuto =2.1157400524059097e-05
