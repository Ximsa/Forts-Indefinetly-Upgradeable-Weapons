local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel54",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel54"
MinFireSpeed = 13600.0
MaxFireSpeed = 14600.1
EnergyFireCost = 31500.0
MetalFireCost = 6300.0
ReloadTime = 23.125
Projectile = "_bigcannon54"
FireStdDev =6.40011365852788e-05
FireStdDevAuto =3.20005682926394e-05
