local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel12"
NodeEffects = {}
MinFireSpeed = 12400.0
MaxFireSpeed = 12400.1
EnergyFireCost = 3682.872491320983
MetalFireCost = 95.04187074376729
ReloadTime = 4.984375
Projectile = "_cannon88he12"
FireStdDev =0.001752469497406961
FireStdDevAuto =0.001752469497406961
