local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel29"
NodeEffects = {}
MinFireSpeed = 14400.0
MaxFireSpeed = 14400.1
EnergyFireCost = 15067.915624867597
MetalFireCost = 376.6978906216899
ReloadTime = 20.109375
Projectile = "_hellfirecannon29"
FireStdDev =0.0006934334949441325
FireStdDevAuto =0.000832120193932959
