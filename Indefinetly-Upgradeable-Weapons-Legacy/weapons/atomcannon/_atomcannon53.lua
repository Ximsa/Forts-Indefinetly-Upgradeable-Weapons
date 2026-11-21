local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel53"
NodeEffects = {}
MinFireSpeed = 6.261836876893946
MaxFireSpeed = 25050.1
EnergyFireCost = 254293.02981957037
MetalFireCost = 5085.860596391409
ReloadTime = 73.2421875
Projectile = "_atomcannon53"
FireStdDev =7.040125024380668e-05
FireStdDevAuto =7.744137526818735e-05
