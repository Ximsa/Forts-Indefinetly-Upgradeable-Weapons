local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel55"
NodeEffects = {}
MinFireSpeed = 22200.0
MaxFireSpeed = 22200.1
EnergyFireCost = 32080.899931279833
MetalFireCost = 802.0224982819957
ReloadTime = 14.828125
Projectile = "_hellfirecannon55"
FireStdDev =5.818285144116254e-05
FireStdDevAuto =6.981942172939505e-05
