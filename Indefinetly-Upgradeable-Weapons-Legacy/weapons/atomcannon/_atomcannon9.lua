local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel9"
NodeEffects = {}
MinFireSpeed = 645.700815
MaxFireSpeed = 7450.1
EnergyFireCost = 49429.95030553968
MetalFireCost = 988.5990061107937
ReloadTime = 116.2109375
Projectile = "_atomcannon9"
FireStdDev =0.004665073802097332
FireStdDevAuto =0.005131581182307065
