local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel48"
NodeEffects = {}
MinFireSpeed = 26800.0
MaxFireSpeed = 26800.1
EnergyFireCost = 13850.176301782163
MetalFireCost = 357.4239045621204
ReloadTime = 3.4375
Projectile = "_cannon88he48"
FireStdDev =5.669095876507657e-05
FireStdDevAuto =5.669095876507657e-05
