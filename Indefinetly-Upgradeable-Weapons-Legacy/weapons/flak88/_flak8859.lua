local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel59"
NodeEffects = {}
MinFireSpeed = 31200.0
MaxFireSpeed = 31200.1
EnergyFireCost = 18270.294448941804
MetalFireCost = 471.49146965011124
ReloadTime = 2.96484375
Projectile = "_cannon88he59"
FireStdDev =1.98698352029105e-05
FireStdDevAuto =1.98698352029105e-05
