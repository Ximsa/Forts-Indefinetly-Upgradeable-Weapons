local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head31"
NodeEffects = {}
MinFireSpeed = 19000.0
MaxFireSpeed = 19000.1
EnergyFireCost = 16147.154178482811
MetalFireCost = 161.47154178482816
ReloadTime = 22.734375
Projectile = "_sniperemp31"
FireStdDev =5.7308553301167965e-05
FireStdDevAuto =0.00022923421320467186
