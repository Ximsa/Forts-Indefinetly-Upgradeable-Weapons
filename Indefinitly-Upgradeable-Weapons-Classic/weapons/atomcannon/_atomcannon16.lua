local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel16"
NodeEffects = {}
MinFireSpeed = 308.83669814197356
MaxFireSpeed = 10250.1
EnergyFireCost = 73438.49159573992
MetalFireCost = 1468.7698319147983
ReloadTime = 109.375
Projectile = "_atomcannon16"
FireStdDev =0.002393920493691634
FireStdDevAuto =0.0026333125430607974
