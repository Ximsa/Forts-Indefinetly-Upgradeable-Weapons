local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel14"
NodeEffects = {}
MinFireSpeed = 9900.0
MaxFireSpeed = 9900.1
EnergyFireCost = 7957.322458967594
MetalFireCost = 198.93306147418983
ReloadTime = 23.15625
Projectile = "_hellfirecannon14"
FireStdDev =0.0028966437973668773
FireStdDevAuto =0.0034759725568402526
