local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel17"
NodeEffects = {}
MinFireSpeed = 10800.0
MaxFireSpeed = 10800.1
EnergyFireCost = 9250.316163230802
MetalFireCost = 231.25790408077003
ReloadTime = 22.546875
Projectile = "_hellfirecannon17"
FireStdDev =0.0021762913579014853
FireStdDevAuto =0.002611549629481782
