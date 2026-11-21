local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head52"
NodeEffects = {}
MinFireSpeed = 25300.0
MaxFireSpeed = 25300.1
EnergyFireCost = 29750.314907912318
MetalFireCost = 297.5031490791232
ReloadTime = 17.8125
Projectile = "_sniperemp52"
FireStdDev =7.744137526818734e-06
FireStdDevAuto =3.0976550107274935e-05
