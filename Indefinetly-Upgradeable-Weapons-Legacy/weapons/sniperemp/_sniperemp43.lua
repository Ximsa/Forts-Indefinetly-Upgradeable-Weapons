local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head43"
NodeEffects = {}
MinFireSpeed = 22600.0
MaxFireSpeed = 22600.1
EnergyFireCost = 23375.03818298108
MetalFireCost = 233.75038182981083
ReloadTime = 19.921875
Projectile = "_sniperemp43"
FireStdDev =1.8260271200148694e-05
FireStdDevAuto =7.304108480059478e-05
