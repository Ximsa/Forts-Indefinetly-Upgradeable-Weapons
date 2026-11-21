local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel4"
NodeEffects = {}
MinFireSpeed = 6900.0
MaxFireSpeed = 6900.1
EnergyFireCost = 4056.969451904297
MetalFireCost = 101.42423629760742
ReloadTime = 25.1875
Projectile = "_hellfirecannon4"
FireStdDev =0.007513148009015776
FireStdDevAuto =0.009015777610818931
