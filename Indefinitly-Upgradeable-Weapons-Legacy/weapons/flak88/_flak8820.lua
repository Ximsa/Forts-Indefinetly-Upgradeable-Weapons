local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel20"
NodeEffects = {}
MinFireSpeed = 15600.0
MaxFireSpeed = 15600.1
EnergyFireCost = 5479.183296594305
MetalFireCost = 141.39827862178848
ReloadTime = 4.640625
Projectile = "_cannon88he20"
FireStdDev =0.0008175399541327891
FireStdDevAuto =0.0008175399541327891
