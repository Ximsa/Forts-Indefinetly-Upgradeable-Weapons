local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head17"
NodeEffects = {}
MinFireSpeed = 14800.0
MaxFireSpeed = 14800.1
EnergyFireCost = 9250.316163230802
MetalFireCost = 92.50316163230802
ReloadTime = 26.015625
Projectile = "_sniperemp17"
FireStdDev =0.00021762913579014855
FireStdDevAuto =0.0008705165431605942
