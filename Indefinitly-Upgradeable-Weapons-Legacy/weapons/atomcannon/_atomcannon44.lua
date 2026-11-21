local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel44"
NodeEffects = {}
MinFireSpeed = 16.16289549645874
MaxFireSpeed = 21450.1
EnergyFireCost = 200335.60962158462
MetalFireCost = 4006.712192431694
ReloadTime = 82.03125
Projectile = "_atomcannon44"
FireStdDev =0.00016600246545589724
FireStdDevAuto =0.00018260271200148698
