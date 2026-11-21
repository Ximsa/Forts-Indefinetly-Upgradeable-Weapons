local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head3"
NodeEffects = {}
MinFireSpeed = 10600.0
MaxFireSpeed = 10600.1
EnergyFireCost = 3699.169921875
MetalFireCost = 36.99169921875
ReloadTime = 29.296875
Projectile = "_sniperemp3"
FireStdDev =0.0008264462809917355
FireStdDevAuto =0.003305785123966942
