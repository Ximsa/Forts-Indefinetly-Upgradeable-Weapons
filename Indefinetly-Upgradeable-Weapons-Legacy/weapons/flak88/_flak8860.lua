local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel60"
NodeEffects = {}
MinFireSpeed = 31600.0
MaxFireSpeed = 31600.1
EnergyFireCost = 18710.76779970652
MetalFireCost = 482.8585238633942
ReloadTime = 2.921875
Projectile = "_cannon88he60"
FireStdDev =1.8063486548100454e-05
FireStdDevAuto =1.8063486548100454e-05
