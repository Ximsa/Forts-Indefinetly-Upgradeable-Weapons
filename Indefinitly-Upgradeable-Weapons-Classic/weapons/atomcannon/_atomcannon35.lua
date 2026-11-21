local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel35"
NodeEffects = {}
MinFireSpeed = 41.71925841655406
MaxFireSpeed = 17850.1
EnergyFireCost = 153405.59028450632
MetalFireCost = 3068.1118056901278
ReloadTime = 90.8203125
Projectile = "_atomcannon35"
FireStdDev =0.00039142513012204046
FireStdDevAuto =0.00043056764313424456
