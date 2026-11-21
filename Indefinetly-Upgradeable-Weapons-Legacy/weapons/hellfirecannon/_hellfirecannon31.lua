local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel31"
NodeEffects = {}
MinFireSpeed = 15000.0
MaxFireSpeed = 15000.1
EnergyFireCost = 16147.154178482811
MetalFireCost = 403.67885446207026
ReloadTime = 19.703125
Projectile = "_hellfirecannon31"
FireStdDev =0.0005730855330116796
FireStdDevAuto =0.0006877026396140155
