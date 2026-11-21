local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel31"
NodeEffects = {}
MinFireSpeed = 20000.0
MaxFireSpeed = 20000.1
EnergyFireCost = 8342.696325549454
MetalFireCost = 215.2953890464375
ReloadTime = 4.16796875
Projectile = "_cannon88he31"
FireStdDev =0.0002865427665058398
FireStdDevAuto =0.0002865427665058398
