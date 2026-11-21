local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel28"
NodeEffects = {}
MinFireSpeed = 18800.0
MaxFireSpeed = 18800.1
EnergyFireCost = 7512.703743522388
MetalFireCost = 193.87622563928744
ReloadTime = 4.296875
Projectile = "_cannon88he28"
FireStdDev =0.00038138842221927286
FireStdDevAuto =0.00038138842221927286
