local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel64"
NodeEffects = {}
MinFireSpeed = 1.9650307629564332
MaxFireSpeed = 29450.1
EnergyFireCost = 331331.75751339644
MetalFireCost = 6626.635150267932
ReloadTime = 62.5
Projectile = "_atomcannon64"
FireStdDev =2.467520872631712e-05
FireStdDevAuto =2.7142729598948835e-05
