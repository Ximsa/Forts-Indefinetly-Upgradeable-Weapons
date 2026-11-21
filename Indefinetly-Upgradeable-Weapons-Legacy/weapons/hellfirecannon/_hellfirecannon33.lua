local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel33"
NodeEffects = {}
MinFireSpeed = 15600.0
MaxFireSpeed = 15600.1
EnergyFireCost = 17260.382422873503
MetalFireCost = 431.5095605718376
ReloadTime = 19.296875
Projectile = "_hellfirecannon33"
FireStdDev =0.00047362440744766905
FireStdDevAuto =0.0005683492889372028
