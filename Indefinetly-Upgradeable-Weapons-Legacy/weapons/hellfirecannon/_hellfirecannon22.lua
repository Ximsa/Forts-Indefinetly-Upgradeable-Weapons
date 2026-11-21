local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel22"
NodeEffects = {}
MinFireSpeed = 12300.0
MaxFireSpeed = 12300.1
EnergyFireCost = 11543.549691962702
MetalFireCost = 288.5887422990675
ReloadTime = 21.53125
Projectile = "_hellfirecannon22"
FireStdDev =0.001351305709310395
FireStdDevAuto =0.001621566851172474
