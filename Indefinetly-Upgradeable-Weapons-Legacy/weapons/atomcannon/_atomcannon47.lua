local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel47"
NodeEffects = {}
MinFireSpeed = 11.782750816918425
MaxFireSpeed = 22650.1
EnergyFireCost = 217491.63357668943
MetalFireCost = 4349.83267153379
ReloadTime = 79.1015625
Projectile = "_atomcannon47"
FireStdDev =0.00012472010928316846
FireStdDevAuto =0.00013719212021148533
