local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel49"
NodeEffects = {}
MinFireSpeed = 20400.0
MaxFireSpeed = 20400.1
EnergyFireCost = 27525.648980317765
MetalFireCost = 688.141224507944
ReloadTime = 16.046875
Projectile = "_hellfirecannon49"
FireStdDev =0.00010307447048195738
FireStdDevAuto =0.00012368936457834886
