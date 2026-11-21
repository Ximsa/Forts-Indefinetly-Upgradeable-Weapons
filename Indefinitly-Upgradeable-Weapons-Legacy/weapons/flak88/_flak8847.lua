local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel47"
NodeEffects = {}
MinFireSpeed = 26400.0
MaxFireSpeed = 26400.1
EnergyFireCost = 13484.481281754744
MetalFireCost = 347.98661372270317
ReloadTime = 3.48046875
Projectile = "_cannon88he47"
FireStdDev =6.236005464158423e-05
FireStdDevAuto =6.236005464158423e-05
