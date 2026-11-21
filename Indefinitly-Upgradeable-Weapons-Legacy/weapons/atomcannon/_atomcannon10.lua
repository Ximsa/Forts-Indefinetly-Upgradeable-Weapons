local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel10"
NodeEffects = {}
MinFireSpeed = 581.1307335
MaxFireSpeed = 7850.1
EnergyFireCost = 52702.293279063735
MetalFireCost = 1054.0458655812747
ReloadTime = 115.234375
Projectile = "_atomcannon10"
FireStdDev =0.004240976183724847
FireStdDevAuto =0.004665073802097332
