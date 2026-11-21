local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head3"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 4150.0
MaxFireSpeed = 4150.1
EnergyFireCost = 4315.6982421875
MetalFireCost = 61.65283203125
ReloadTime = 24.4140625
Projectile = "_grenade3"
FireStdDev =0.016528925619834708
FireStdDevAuto =0.008264462809917354
