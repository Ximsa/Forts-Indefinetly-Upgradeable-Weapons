local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head37",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head37"
NodeEffects = {}
MinFireSpeed = 57.447418839594945
MaxFireSpeed = 13210.0
EnergyFireCost = 5224.832960562807
MetalFireCost = 130.6208240140702
ReloadTime = 7.109375
Projectile = "_mortar237"
FireStdDevAuto =2.7034079453927032e-05
