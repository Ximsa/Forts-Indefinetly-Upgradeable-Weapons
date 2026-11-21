local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head6"
NodeEffects = {}
MinFireSpeed = 11500.0
MaxFireSpeed = 11500.1
EnergyFireCost = 638.59036244452
MetalFireCost = 15.964759061113
ReloadTime = 0.8578125
Projectile = "_sniperrifle6"
FireStdDev =0.0040359885998845066
FireStdDevAuto =0.008071977199769013
