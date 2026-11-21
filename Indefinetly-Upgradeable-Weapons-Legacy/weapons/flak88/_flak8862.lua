local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel62"
NodeEffects = {}
MinFireSpeed = 32400.0
MaxFireSpeed = 32400.1
EnergyFireCost = 19612.469226992194
MetalFireCost = 506.12823811592784
ReloadTime = 2.8359375
Projectile = "_cannon88he62"
FireStdDev =1.492850127942186e-05
FireStdDevAuto =1.492850127942186e-05
