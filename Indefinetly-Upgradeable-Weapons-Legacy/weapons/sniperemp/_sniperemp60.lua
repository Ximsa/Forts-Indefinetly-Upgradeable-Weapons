local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head60"
NodeEffects = {}
MinFireSpeed = 27700.0
MaxFireSpeed = 27700.1
EnergyFireCost = 36214.389289754574
MetalFireCost = 362.1438928975457
ReloadTime = 15.9375
Projectile = "_sniperemp60"
FireStdDev =3.612697309620089e-06
FireStdDevAuto =1.4450789238480357e-05
