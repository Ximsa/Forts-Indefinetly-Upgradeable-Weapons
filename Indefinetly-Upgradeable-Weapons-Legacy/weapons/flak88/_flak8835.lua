local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel35"
NodeEffects = {}
MinFireSpeed = 21600.0
MaxFireSpeed = 21600.1
EnergyFireCost = 9511.146597639396
MetalFireCost = 245.44894445521018
ReloadTime = 3.99609375
Projectile = "_cannon88he35"
FireStdDev =0.00019571256506102023
FireStdDevAuto =0.00019571256506102023
