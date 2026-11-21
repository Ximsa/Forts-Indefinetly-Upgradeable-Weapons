local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel37"
NodeEffects = {}
MinFireSpeed = 22400.0
MaxFireSpeed = 22400.1
EnergyFireCost = 10123.113861090442
MetalFireCost = 261.2416480281404
ReloadTime = 3.91015625
Projectile = "_cannon88he37"
FireStdDev =0.00016174592153803322
FireStdDevAuto =0.00016174592153803322
