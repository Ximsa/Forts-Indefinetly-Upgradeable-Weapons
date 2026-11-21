local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel33",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel33"
MinFireSpeed = 9400.0
MaxFireSpeed = 10400.1
EnergyFireCost = 21000.0
MetalFireCost = 4200.0
ReloadTime = 29.6875
Projectile = "_bigcannon33"
FireStdDev =0.00047362440744766905
FireStdDevAuto =0.00023681220372383452
