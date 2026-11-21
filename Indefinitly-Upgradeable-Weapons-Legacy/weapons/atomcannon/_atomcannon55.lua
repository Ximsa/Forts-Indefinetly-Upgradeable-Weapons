local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel55"
NodeEffects = {}
MinFireSpeed = 5.072087870284096
MaxFireSpeed = 25850.1
EnergyFireCost = 267340.8327606652
MetalFireCost = 5346.816655213306
ReloadTime = 71.2890625
Projectile = "_atomcannon55"
FireStdDev =5.818285144116254e-05
FireStdDevAuto =6.40011365852788e-05
