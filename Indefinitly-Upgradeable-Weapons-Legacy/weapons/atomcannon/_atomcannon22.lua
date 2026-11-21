local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel22"
NodeEffects = {}
MinFireSpeed = 164.12848369726862
MaxFireSpeed = 12650.1
EnergyFireCost = 96196.2474330225
MetalFireCost = 1923.9249486604504
ReloadTime = 103.515625
Projectile = "_atomcannon22"
FireStdDev =0.001351305709310395
FireStdDevAuto =0.0014864362802414347
