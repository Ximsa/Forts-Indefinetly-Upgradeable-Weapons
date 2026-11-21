local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel49"
NodeEffects = {}
MinFireSpeed = 9.544028161703924
MaxFireSpeed = 23450.1
EnergyFireCost = 229380.40816931467
MetalFireCost = 4587.608163386295
ReloadTime = 77.1484375
Projectile = "_atomcannon49"
FireStdDev =0.00010307447048195738
FireStdDevAuto =0.00011338191753015314
