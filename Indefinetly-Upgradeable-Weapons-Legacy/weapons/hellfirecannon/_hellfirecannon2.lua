local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel2"
NodeEffects = {}
MinFireSpeed = 6300.0
MaxFireSpeed = 6300.1
EnergyFireCost = 3346.875
MetalFireCost = 83.671875
ReloadTime = 25.59375
Projectile = "_hellfirecannon2"
FireStdDev =0.00909090909090909
FireStdDevAuto =0.010909090909090908
