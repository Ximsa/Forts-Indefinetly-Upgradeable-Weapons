local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head64",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head64"
NodeEffects = {}
MinFireSpeed = 3.3405522970259374
MaxFireSpeed = 19555.0
EnergyFireCost = 10602.61624042869
MetalFireCost = 265.06540601071714
ReloadTime = 5.0
Projectile = "_mortar264"
FireStdDevAuto =1.5720246103651473e-06
