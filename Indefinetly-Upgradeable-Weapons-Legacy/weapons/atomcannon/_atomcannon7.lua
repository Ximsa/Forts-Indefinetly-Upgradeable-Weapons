local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel7"
NodeEffects = {}
MinFireSpeed = 797.1615
MaxFireSpeed = 6650.1
EnergyFireCost = 43035.521053607226
MetalFireCost = 860.7104210721445
ReloadTime = 118.1640625
Projectile = "_atomcannon7"
FireStdDev =0.005644739300537772
FireStdDevAuto =0.006209213230591549
