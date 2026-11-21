local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head59"
NodeEffects = {}
MinFireSpeed = 27400.0
MaxFireSpeed = 27400.1
EnergyFireCost = 35361.86022375835
MetalFireCost = 353.61860223758345
ReloadTime = 16.171875
Projectile = "_sniperemp59"
FireStdDev =3.973967040582098e-06
FireStdDevAuto =1.5895868162328393e-05
