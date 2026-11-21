local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel48"
NodeEffects = {}
MinFireSpeed = 20100.0
MaxFireSpeed = 20100.1
EnergyFireCost = 26806.79284215903
MetalFireCost = 670.1698210539756
ReloadTime = 16.25
Projectile = "_hellfirecannon48"
FireStdDev =0.00011338191753015314
FireStdDevAuto =0.00013605830103618376
