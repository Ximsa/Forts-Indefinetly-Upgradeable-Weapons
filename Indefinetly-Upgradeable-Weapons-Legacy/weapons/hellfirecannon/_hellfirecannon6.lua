local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel6"
NodeEffects = {}
MinFireSpeed = 7500.0
MaxFireSpeed = 7500.1
EnergyFireCost = 4789.4277183339
MetalFireCost = 119.7356929583475
ReloadTime = 24.78125
Projectile = "_hellfirecannon6"
FireStdDev =0.006209213230591549
FireStdDevAuto =0.007451055876709859
