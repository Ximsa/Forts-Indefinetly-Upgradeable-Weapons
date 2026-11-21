local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head7"
NodeEffects = {}
MinFireSpeed = 11800.0
MaxFireSpeed = 11800.1
EnergyFireCost = 5164.262526432867
MetalFireCost = 51.64262526432867
ReloadTime = 28.359375
Projectile = "_sniperemp7"
FireStdDev =0.0005644739300537772
FireStdDevAuto =0.0022578957202151087
