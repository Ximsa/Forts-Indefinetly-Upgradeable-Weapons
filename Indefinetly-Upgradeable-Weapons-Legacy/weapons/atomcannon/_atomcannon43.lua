local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel43"
NodeEffects = {}
MinFireSpeed = 17.958772773843044
MaxFireSpeed = 21050.1
EnergyFireCost = 194791.98485817562
MetalFireCost = 3895.839697163514
ReloadTime = 83.0078125
Projectile = "_atomcannon43"
FireStdDev =0.00018260271200148698
FireStdDevAuto =0.0002008629832016357
