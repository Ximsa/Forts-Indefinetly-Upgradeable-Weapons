local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel10"
NodeEffects = {}
MinFireSpeed = 11600.0
MaxFireSpeed = 11600.1
EnergyFireCost = 3267.542183301952
MetalFireCost = 84.32366924650198
ReloadTime = 5.0703125
Projectile = "_cannon88he10"
FireStdDev =0.0021204880918624233
FireStdDevAuto =0.0021204880918624233
