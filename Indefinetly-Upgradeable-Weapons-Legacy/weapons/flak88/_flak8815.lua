local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel15"
NodeEffects = {}
MinFireSpeed = 13600.0
MaxFireSpeed = 13600.1
EnergyFireCost = 4330.5220715676305
MetalFireCost = 111.75540829851948
ReloadTime = 4.85546875
Projectile = "_cannon88he15"
FireStdDev =0.0013166562715303987
FireStdDevAuto =0.0013166562715303987
