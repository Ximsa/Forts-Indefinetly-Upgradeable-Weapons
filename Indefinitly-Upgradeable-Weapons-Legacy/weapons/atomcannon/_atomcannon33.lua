local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel33"
NodeEffects = {}
MinFireSpeed = 51.505257304387726
MaxFireSpeed = 17050.1
EnergyFireCost = 143836.5201906125
MetalFireCost = 2876.7304038122516
ReloadTime = 92.7734375
Projectile = "_atomcannon33"
FireStdDev =0.00047362440744766905
FireStdDevAuto =0.000520986848192436
