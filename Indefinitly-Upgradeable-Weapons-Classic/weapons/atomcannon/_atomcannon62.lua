local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel62"
NodeEffects = {}
MinFireSpeed = 2.4259639048844854
MaxFireSpeed = 28650.1
EnergyFireCost = 316330.14882245485
MetalFireCost = 6326.6029764490995
ReloadTime = 64.453125
Projectile = "_atomcannon62"
FireStdDev =2.985700255884372e-05
FireStdDevAuto =3.2842702814728095e-05
