local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head61"
NodeEffects = {}
MinFireSpeed = 28000.0
MaxFireSpeed = 28000.1
EnergyFireCost = 37080.23912240699
MetalFireCost = 370.8023912240698
ReloadTime = 15.703125
Projectile = "_sniperemp61"
FireStdDev =3.284270281472808e-06
FireStdDevAuto =1.3137081125891232e-05
