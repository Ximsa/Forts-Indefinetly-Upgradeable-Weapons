local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head24"
NodeEffects = {}
MinFireSpeed = 16900.0
MaxFireSpeed = 16900.1
EnergyFireCost = 12511.79136927305
MetalFireCost = 125.11791369273051
ReloadTime = 24.375
Projectile = "_sniperemp24"
FireStdDev =0.00011167815779424753
FireStdDevAuto =0.0004467126311769901
