local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel16"
NodeEffects = {}
MinFireSpeed = 14000.0
MaxFireSpeed = 14000.1
EnergyFireCost = 4553.186478935875
MetalFireCost = 117.50158655318386
ReloadTime = 4.8125
Projectile = "_cannon88he16"
FireStdDev =0.001196960246845817
FireStdDevAuto =0.001196960246845817
