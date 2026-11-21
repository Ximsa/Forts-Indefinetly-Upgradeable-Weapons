local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head55"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 14550.0
MaxFireSpeed = 14550.1
EnergyFireCost = 37427.716586493145
MetalFireCost = 534.6816655213306
ReloadTime = 14.2578125
Projectile = "_grenade55"
FireStdDev =0.00011636570288232508
FireStdDevAuto =5.818285144116254e-05
