local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel46"
NodeEffects = {}
MinFireSpeed = 19500.0
MaxFireSpeed = 19500.1
EnergyFireCost = 25402.088397984233
MetalFireCost = 635.0522099496056
ReloadTime = 16.65625
Projectile = "_hellfirecannon46"
FireStdDev =0.0001371921202114853
FireStdDevAuto =0.00016463054425378237
