local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel50"
NodeEffects = {}
MinFireSpeed = 27600.0
MaxFireSpeed = 27600.1
EnergyFireCost = 14598.797576911533
MetalFireCost = 376.74316327513645
ReloadTime = 3.3515625
Projectile = "_cannon88he50"
FireStdDev =4.6852032037253355e-05
FireStdDevAuto =4.6852032037253355e-05
