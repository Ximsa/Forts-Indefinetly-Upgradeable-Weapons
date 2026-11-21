local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel31"
NodeEffects = {}
MinFireSpeed = 63.586737412824355
MaxFireSpeed = 16250.1
EnergyFireCost = 134559.6181540234
MetalFireCost = 2691.192363080469
ReloadTime = 94.7265625
Projectile = "_atomcannon31"
FireStdDev =0.0005730855330116796
FireStdDevAuto =0.0006303940863128475
