local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head25"
NodeEffects = {}
MinFireSpeed = 17200.0
MaxFireSpeed = 17200.1
EnergyFireCost = 13007.288109417943
MetalFireCost = 130.07288109417942
ReloadTime = 24.140625
Projectile = "_sniperemp25"
FireStdDev =0.00010152559799477047
FireStdDevAuto =0.0004061023919790819
