local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel23"
NodeEffects = {}
MinFireSpeed = 147.71563532754178
MaxFireSpeed = 13050.1
EnergyFireCost = 100199.31379916347
MetalFireCost = 2003.98627598327
ReloadTime = 102.5390625
Projectile = "_atomcannon23"
FireStdDev =0.0012284597357367227
FireStdDevAuto =0.001351305709310395
