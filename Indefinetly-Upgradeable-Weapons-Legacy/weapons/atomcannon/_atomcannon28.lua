local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel28"
NodeEffects = {}
MinFireSpeed = 87.22460550456015
MaxFireSpeed = 15050.1
EnergyFireCost = 121172.6410245546
MetalFireCost = 2423.452820491093
ReloadTime = 97.65625
Projectile = "_atomcannon28"
FireStdDev =0.0007627768444385457
FireStdDevAuto =0.0008390545288824003
