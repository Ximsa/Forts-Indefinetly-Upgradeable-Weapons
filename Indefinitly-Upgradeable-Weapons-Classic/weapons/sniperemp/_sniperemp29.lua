local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head29"
NodeEffects = {}
MinFireSpeed = 18400.0
MaxFireSpeed = 18400.1
EnergyFireCost = 15067.915624867597
MetalFireCost = 150.679156248676
ReloadTime = 23.203125
Projectile = "_sniperemp29"
FireStdDev =6.934334949441324e-05
FireStdDevAuto =0.000277373397977653
