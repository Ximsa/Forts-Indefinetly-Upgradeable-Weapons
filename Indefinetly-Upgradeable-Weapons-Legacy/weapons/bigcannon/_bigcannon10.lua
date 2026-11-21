local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel10",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel10"
MinFireSpeed = 4800.0
MaxFireSpeed = 5800.1
EnergyFireCost = 9500.0
MetalFireCost = 1900.0
ReloadTime = 36.875
Projectile = "_bigcannon10"
FireStdDev =0.004240976183724847
FireStdDevAuto =0.0021204880918624233
