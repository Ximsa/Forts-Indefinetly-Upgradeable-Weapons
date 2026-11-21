local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel10"
NodeEffects = {}
MinFireSpeed = 8700.0
MaxFireSpeed = 8700.1
EnergyFireCost = 6324.275193487649
MetalFireCost = 158.1068798371912
ReloadTime = 23.96875
Projectile = "_hellfirecannon10"
FireStdDev =0.004240976183724847
FireStdDevAuto =0.005089171420469816
