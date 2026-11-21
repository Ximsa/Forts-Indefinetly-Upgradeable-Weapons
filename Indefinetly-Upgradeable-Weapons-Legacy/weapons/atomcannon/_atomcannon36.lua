local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel36"
NodeEffects = {}
MinFireSpeed = 37.547332574898654
MaxFireSpeed = 18250.1
EnergyFireCost = 158302.55263270173
MetalFireCost = 3166.051052654036
ReloadTime = 89.84375
Projectile = "_atomcannon36"
FireStdDev =0.0003558410273836731
FireStdDevAuto =0.00039142513012204046
