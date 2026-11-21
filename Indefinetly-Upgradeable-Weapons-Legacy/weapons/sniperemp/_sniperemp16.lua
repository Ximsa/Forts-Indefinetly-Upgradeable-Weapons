local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head16"
NodeEffects = {}
MinFireSpeed = 14500.0
MaxFireSpeed = 14500.1
EnergyFireCost = 8812.61899148879
MetalFireCost = 88.1261899148879
ReloadTime = 26.25
Projectile = "_sniperemp16"
FireStdDev =0.0002393920493691634
FireStdDevAuto =0.0009575681974766536
