local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel19"
NodeEffects = {}
MinFireSpeed = 15200.0
MaxFireSpeed = 15200.1
EnergyFireCost = 5242.272784339008
MetalFireCost = 135.28445895068404
ReloadTime = 4.68359375
Projectile = "_cannon88he19"
FireStdDev =0.0008992939495460681
FireStdDevAuto =0.0008992939495460681
