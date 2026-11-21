local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head3"
NodeEffects = {}
MinFireSpeed = 10600.0
MaxFireSpeed = 10600.1
EnergyFireCost = 493.22265625
MetalFireCost = 12.33056640625
ReloadTime = 0.87890625
Projectile = "_sniperrifle3"
FireStdDev =0.005371900826446279
FireStdDevAuto =0.010743801652892558
