local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel27"
NodeEffects = {}
MinFireSpeed = 13800.0
MaxFireSpeed = 13800.1
EnergyFireCost = 14021.628970285841
MetalFireCost = 350.540724257146
ReloadTime = 20.515625
Projectile = "_hellfirecannon27"
FireStdDev =0.0008390545288824003
FireStdDevAuto =0.0010068654346588803
