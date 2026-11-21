local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head18"
NodeEffects = {}
MinFireSpeed = 15100.0
MaxFireSpeed = 15100.1
EnergyFireCost = 9694.852353281283
MetalFireCost = 96.94852353281283
ReloadTime = 25.78125
Projectile = "_sniperemp18"
FireStdDev =0.00019784466890013504
FireStdDevAuto =0.0007913786756005402
