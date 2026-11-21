local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head16"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 6750.0
MaxFireSpeed = 6750.1
EnergyFireCost = 10281.388823403588
MetalFireCost = 146.8769831914798
ReloadTime = 21.875
Projectile = "_grenade16"
FireStdDev =0.004787840987383268
FireStdDevAuto =0.002393920493691634
