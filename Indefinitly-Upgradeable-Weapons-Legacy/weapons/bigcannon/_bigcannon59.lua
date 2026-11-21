local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel59",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel59"
MinFireSpeed = 14600.0
MaxFireSpeed = 15600.1
EnergyFireCost = 34000.0
MetalFireCost = 6800.0
ReloadTime = 21.5625
Projectile = "_bigcannon59"
FireStdDev =3.9739670405821e-05
FireStdDevAuto =1.98698352029105e-05
