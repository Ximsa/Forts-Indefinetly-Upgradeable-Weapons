local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel24"
NodeEffects = {}
MinFireSpeed = 17200.0
MaxFireSpeed = 17200.1
EnergyFireCost = 6464.425540791077
MetalFireCost = 166.82388492364066
ReloadTime = 4.46875
Projectile = "_cannon88he24"
FireStdDev =0.0005583907889712376
FireStdDevAuto =0.0005583907889712376
