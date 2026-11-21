local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel50"
NodeEffects = {}
MinFireSpeed = 20700.0
MaxFireSpeed = 20700.1
EnergyFireCost = 28255.73724563523
MetalFireCost = 706.3934311408806
ReloadTime = 15.84375
Projectile = "_hellfirecannon50"
FireStdDev =9.370406407450671e-05
FireStdDevAuto =0.00011244487688940805
