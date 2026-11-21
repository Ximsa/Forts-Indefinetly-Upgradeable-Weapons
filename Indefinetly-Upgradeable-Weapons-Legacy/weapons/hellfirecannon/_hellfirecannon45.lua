local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel45"
NodeEffects = {}
MinFireSpeed = 19200.0
MaxFireSpeed = 19200.1
EnergyFireCost = 24715.90242263063
MetalFireCost = 617.8975605657655
ReloadTime = 16.859375
Projectile = "_hellfirecannon45"
FireStdDev =0.00015091133223263384
FireStdDevAuto =0.0001810935986791606
