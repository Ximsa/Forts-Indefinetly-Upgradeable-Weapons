local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel51"
NodeEffects = {}
MinFireSpeed = 21000.0
MaxFireSpeed = 21000.1
EnergyFireCost = 28997.23314009828
MetalFireCost = 724.9308285024568
ReloadTime = 15.640625
Projectile = "_hellfirecannon51"
FireStdDev =8.518551279500609e-05
FireStdDevAuto =0.0001022226153540073
