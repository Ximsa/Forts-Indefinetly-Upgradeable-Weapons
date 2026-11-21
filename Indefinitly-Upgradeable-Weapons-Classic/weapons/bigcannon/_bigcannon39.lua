local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel39",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel39"
MinFireSpeed = 10600.0
MaxFireSpeed = 11600.1
EnergyFireCost = 24000.0
MetalFireCost = 4800.0
ReloadTime = 27.8125
Projectile = "_bigcannon39"
FireStdDev =0.0002673486306413772
FireStdDevAuto =0.0001336743153206886
