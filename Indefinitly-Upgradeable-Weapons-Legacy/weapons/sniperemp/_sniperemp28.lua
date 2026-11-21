local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head28"
NodeEffects = {}
MinFireSpeed = 18100.0
MaxFireSpeed = 18100.1
EnergyFireCost = 14540.716922946558
MetalFireCost = 145.4071692294656
ReloadTime = 23.4375
Projectile = "_sniperemp28"
FireStdDev =7.627768444385458e-05
FireStdDevAuto =0.0003051107377754183
