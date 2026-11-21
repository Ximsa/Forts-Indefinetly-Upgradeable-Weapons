local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel40"
NodeEffects = {}
MinFireSpeed = 23600.0
MaxFireSpeed = 23600.1
EnergyFireCost = 11077.391296775673
MetalFireCost = 285.8681624974367
ReloadTime = 3.78125
Projectile = "_cannon88he40"
FireStdDev =0.00012152210483698963
FireStdDevAuto =0.00012152210483698963
