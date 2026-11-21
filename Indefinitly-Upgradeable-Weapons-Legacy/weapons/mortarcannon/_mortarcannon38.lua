local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head38",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head38"
NodeEffects = {}
MinFireSpeed = 51.702676955635454
MaxFireSpeed = 13445.0
EnergyFireCost = 5386.4709755716
MetalFireCost = 134.66177438929003
ReloadTime = 7.03125
Projectile = "_mortar238"
FireStdDevAuto =2.433067150853433e-05
