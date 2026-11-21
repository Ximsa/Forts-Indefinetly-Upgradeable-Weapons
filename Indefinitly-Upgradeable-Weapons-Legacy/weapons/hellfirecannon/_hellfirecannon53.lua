local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel53"
NodeEffects = {}
MinFireSpeed = 21600.0
MaxFireSpeed = 21600.1
EnergyFireCost = 30515.16357834845
MetalFireCost = 762.8790894587111
ReloadTime = 15.234375
Projectile = "_hellfirecannon53"
FireStdDev =7.040125024380668e-05
FireStdDevAuto =8.448150029256801e-05
