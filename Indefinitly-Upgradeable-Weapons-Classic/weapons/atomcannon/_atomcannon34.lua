local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel34"
NodeEffects = {}
MinFireSpeed = 46.35473157394895
MaxFireSpeed = 17450.1
EnergyFireCost = 148583.96581859083
MetalFireCost = 2971.679316371818
ReloadTime = 91.796875
Projectile = "_atomcannon34"
FireStdDev =0.00043056764313424456
FireStdDevAuto =0.00047362440744766905
