local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head19"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 7350.0
MaxFireSpeed = 7350.1
EnergyFireCost = 11837.390158184853
MetalFireCost = 169.10557368835504
ReloadTime = 21.2890625
Projectile = "_grenade19"
FireStdDev =0.0035971757981842723
FireStdDevAuto =0.0017985878990921362
