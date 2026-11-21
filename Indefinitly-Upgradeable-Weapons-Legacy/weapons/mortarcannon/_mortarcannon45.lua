local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head45",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head45"
NodeEffects = {}
MinFireSpeed = 24.729230109581877
MaxFireSpeed = 15090.0
EnergyFireCost = 6590.907312701499
MetalFireCost = 164.77268281753751
ReloadTime = 6.484375
Projectile = "_mortar245"
FireStdDevAuto =1.1637284757450298e-05
