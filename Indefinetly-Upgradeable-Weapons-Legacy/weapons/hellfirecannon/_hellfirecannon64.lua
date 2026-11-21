local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel64"
NodeEffects = {}
MinFireSpeed = 24900.0
MaxFireSpeed = 24900.1
EnergyFireCost = 39759.81090160758
MetalFireCost = 993.9952725401894
ReloadTime = 13.0
Projectile = "_hellfirecannon64"
FireStdDev =2.467520872631712e-05
FireStdDevAuto =2.9610250471580545e-05
