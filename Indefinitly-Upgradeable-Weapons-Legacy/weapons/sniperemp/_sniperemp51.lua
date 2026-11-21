local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head51"
NodeEffects = {}
MinFireSpeed = 25000.0
MaxFireSpeed = 25000.1
EnergyFireCost = 28997.23314009828
MetalFireCost = 289.97233140098285
ReloadTime = 18.046875
Projectile = "_sniperemp51"
FireStdDev =8.518551279500608e-06
FireStdDevAuto =3.407420511800243e-05
