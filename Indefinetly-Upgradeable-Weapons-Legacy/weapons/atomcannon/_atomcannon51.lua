local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel51"
NodeEffects = {}
MinFireSpeed = 7.73066281098018
MaxFireSpeed = 24250.1
EnergyFireCost = 241643.60950081897
MetalFireCost = 4832.872190016381
ReloadTime = 75.1953125
Projectile = "_atomcannon51"
FireStdDev =8.518551279500609e-05
FireStdDevAuto =9.370406407450671e-05
