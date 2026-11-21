local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel30"
NodeEffects = {}
MinFireSpeed = 70.65193045869373
MaxFireSpeed = 15850.1
EnergyFireCost = 130027.93172088456
MetalFireCost = 2600.5586344176927
ReloadTime = 95.703125
Projectile = "_atomcannon30"
FireStdDev =0.0006303940863128477
FireStdDevAuto =0.0006934334949441325
