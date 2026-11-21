local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head5"
NodeEffects = {}
MinFireSpeed = 11200.0
MaxFireSpeed = 11200.1
EnergyFireCost = 4420.3595995903015
MetalFireCost = 44.203595995903015
ReloadTime = 28.828125
Projectile = "_sniperemp5"
FireStdDev =0.0006830134553650705
FireStdDevAuto =0.002732053821460282
