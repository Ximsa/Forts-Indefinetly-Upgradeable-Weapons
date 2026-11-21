local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel30",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel30"
MinFireSpeed = 8800.0
MaxFireSpeed = 9800.1
EnergyFireCost = 19500.0
MetalFireCost = 3900.0
ReloadTime = 30.625
Projectile = "_bigcannon30"
FireStdDev =0.0006303940863128477
FireStdDevAuto =0.0003151970431564238
