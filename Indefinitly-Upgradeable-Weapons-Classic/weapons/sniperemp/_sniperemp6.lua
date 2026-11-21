local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head6"
NodeEffects = {}
MinFireSpeed = 11500.0
MaxFireSpeed = 11500.1
EnergyFireCost = 4789.4277183339
MetalFireCost = 47.894277183339
ReloadTime = 28.59375
Projectile = "_sniperemp6"
FireStdDev =0.0006209213230591549
FireStdDevAuto =0.0024836852922366197
