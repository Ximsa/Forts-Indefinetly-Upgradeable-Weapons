local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel6"
NodeEffects = {}
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
EnergyFireCost = 2474.537654472515
MetalFireCost = 63.859036244452
ReloadTime = 5.2421875
Projectile = "_cannon88he6"
FireStdDev =0.0031046066152957746
FireStdDevAuto =0.0031046066152957746
