local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel63"
NodeEffects = {}
MinFireSpeed = 2.183367514396037
MaxFireSpeed = 29050.1
EnergyFireCost = 323772.80739780574
MetalFireCost = 6475.456147956117
ReloadTime = 63.4765625
Projectile = "_atomcannon63"
FireStdDev =2.7142729598948835e-05
FireStdDevAuto =2.985700255884372e-05
