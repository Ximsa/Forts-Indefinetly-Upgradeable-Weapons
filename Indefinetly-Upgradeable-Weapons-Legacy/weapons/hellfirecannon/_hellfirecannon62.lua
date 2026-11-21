local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel62"
NodeEffects = {}
MinFireSpeed = 24300.0
MaxFireSpeed = 24300.1
EnergyFireCost = 37959.6178586946
MetalFireCost = 948.9904464673646
ReloadTime = 13.40625
Projectile = "_hellfirecannon62"
FireStdDev =2.985700255884372e-05
FireStdDevAuto =3.582840307061246e-05
