local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel43"
NodeEffects = {}
MinFireSpeed = 18600.0
MaxFireSpeed = 18600.1
EnergyFireCost = 23375.03818298108
MetalFireCost = 584.3759545745268
ReloadTime = 17.265625
Projectile = "_hellfirecannon43"
FireStdDev =0.00018260271200148698
FireStdDevAuto =0.00021912325440178438
