local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel37"
NodeEffects = {}
MinFireSpeed = 16800.0
MaxFireSpeed = 16800.1
EnergyFireCost = 19593.12360211053
MetalFireCost = 489.8280900527631
ReloadTime = 18.484375
Projectile = "_hellfirecannon37"
FireStdDev =0.00032349184307606645
FireStdDevAuto =0.00038819021169127975
