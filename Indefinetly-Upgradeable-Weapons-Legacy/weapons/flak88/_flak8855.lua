local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel55"
NodeEffects = {}
MinFireSpeed = 29600.0
MaxFireSpeed = 29600.1
EnergyFireCost = 16575.131631161243
MetalFireCost = 427.74533241706445
ReloadTime = 3.13671875
Projectile = "_cannon88he55"
FireStdDev =2.909142572058127e-05
FireStdDevAuto =2.909142572058127e-05
