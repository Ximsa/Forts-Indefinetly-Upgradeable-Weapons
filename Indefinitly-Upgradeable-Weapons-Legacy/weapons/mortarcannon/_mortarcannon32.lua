local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head32",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head32"
NodeEffects = {}
MinFireSpeed = 97.28770824162126
MaxFireSpeed = 12035.0
EnergyFireCost = 4453.187590005761
MetalFireCost = 111.32968975014404
ReloadTime = 7.5
Projectile = "_mortar232"
FireStdDevAuto =4.5782450937233534e-05
