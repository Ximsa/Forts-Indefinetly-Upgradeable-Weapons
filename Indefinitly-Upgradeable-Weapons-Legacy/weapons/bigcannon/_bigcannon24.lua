local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel24",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel24"
MinFireSpeed = 7600.0
MaxFireSpeed = 8600.1
EnergyFireCost = 16500.0
MetalFireCost = 3300.0
ReloadTime = 32.5
Projectile = "_bigcannon24"
FireStdDev =0.0011167815779424752
FireStdDevAuto =0.0005583907889712376
