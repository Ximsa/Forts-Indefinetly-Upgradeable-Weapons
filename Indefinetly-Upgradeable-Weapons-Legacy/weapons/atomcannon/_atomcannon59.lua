local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel59"
NodeEffects = {}
MinFireSpeed = 3.3277968516933956
MaxFireSpeed = 27450.1
EnergyFireCost = 294682.1685313194
MetalFireCost = 5893.6433706263915
ReloadTime = 67.3828125
Projectile = "_atomcannon59"
FireStdDev =3.9739670405821e-05
FireStdDevAuto =4.37136374464031e-05
