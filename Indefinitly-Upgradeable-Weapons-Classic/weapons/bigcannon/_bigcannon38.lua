local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel38",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel38"
MinFireSpeed = 10400.0
MaxFireSpeed = 11400.1
EnergyFireCost = 23500.0
MetalFireCost = 4700.0
ReloadTime = 28.125
Projectile = "_bigcannon38"
FireStdDev =0.00029408349370551494
FireStdDevAuto =0.00014704174685275747
