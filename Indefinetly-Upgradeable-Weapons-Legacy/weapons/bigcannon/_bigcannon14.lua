local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel14",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel14"
MinFireSpeed = 5600.0
MaxFireSpeed = 6600.1
EnergyFireCost = 11500.0
MetalFireCost = 2300.0
ReloadTime = 35.625
Projectile = "_bigcannon14"
FireStdDev =0.0028966437973668773
FireStdDevAuto =0.0014483218986834387
