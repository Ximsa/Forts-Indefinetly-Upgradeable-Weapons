local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel51"
NodeEffects = {}
MinFireSpeed = 28000.0
MaxFireSpeed = 28000.1
EnergyFireCost = 14981.903789050775
MetalFireCost = 386.62977520131045
ReloadTime = 3.30859375
Projectile = "_cannon88he51"
FireStdDev =4.2592756397503044e-05
FireStdDevAuto =4.2592756397503044e-05
