local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel29"
NodeEffects = {}
MinFireSpeed = 78.50214495410414
MaxFireSpeed = 15450.1
EnergyFireCost = 125565.96354056326
MetalFireCost = 2511.3192708112665
ReloadTime = 96.6796875
Projectile = "_atomcannon29"
FireStdDev =0.0006934334949441325
FireStdDevAuto =0.0007627768444385457
