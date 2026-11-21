local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel43",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel43"
MinFireSpeed = 11400.0
MaxFireSpeed = 12400.1
EnergyFireCost = 26000.0
MetalFireCost = 5200.0
ReloadTime = 26.5625
Projectile = "_bigcannon43"
FireStdDev =0.00018260271200148698
FireStdDevAuto =9.130135600074349e-05
