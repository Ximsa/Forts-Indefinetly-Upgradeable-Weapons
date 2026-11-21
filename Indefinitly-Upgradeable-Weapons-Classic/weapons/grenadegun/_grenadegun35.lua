local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head35"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 10550.0
MaxFireSpeed = 10550.1
EnergyFireCost = 21476.78263983089
MetalFireCost = 306.81118056901266
ReloadTime = 18.1640625
Projectile = "_grenade35"
FireStdDev =0.0007828502602440809
FireStdDevAuto =0.00039142513012204046
