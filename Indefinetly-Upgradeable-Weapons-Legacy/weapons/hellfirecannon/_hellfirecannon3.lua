local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel3"
NodeEffects = {}
MinFireSpeed = 6600.0
MaxFireSpeed = 6600.1
EnergyFireCost = 3699.169921875
MetalFireCost = 92.479248046875
ReloadTime = 25.390625
Projectile = "_hellfirecannon3"
FireStdDev =0.008264462809917354
FireStdDevAuto =0.009917355371900824
