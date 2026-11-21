local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel52"
NodeEffects = {}
MinFireSpeed = 21300.0
MaxFireSpeed = 21300.1
EnergyFireCost = 29750.314907912318
MetalFireCost = 743.7578726978078
ReloadTime = 15.4375
Projectile = "_hellfirecannon52"
FireStdDev =7.744137526818735e-05
FireStdDevAuto =9.292965032182482e-05
