local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel5"
NodeEffects = {}
MinFireSpeed = 7200.0
MaxFireSpeed = 7200.1
EnergyFireCost = 4420.3595995903015
MetalFireCost = 110.50898998975754
ReloadTime = 24.984375
Projectile = "_hellfirecannon5"
FireStdDev =0.006830134553650705
FireStdDevAuto =0.008196161464380845
