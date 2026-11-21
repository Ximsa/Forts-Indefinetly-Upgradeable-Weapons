local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel58"
NodeEffects = {}
MinFireSpeed = 3.697552057437106
MaxFireSpeed = 27050.1
EnergyFireCost = 287687.0582462222
MetalFireCost = 5753.741164924447
ReloadTime = 68.359375
Projectile = "_atomcannon58"
FireStdDev =4.37136374464031e-05
FireStdDevAuto =4.8085001191043417e-05
