local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head7"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 4950.0
MaxFireSpeed = 4950.1
EnergyFireCost = 6024.972947505012
MetalFireCost = 86.07104210721445
ReloadTime = 23.6328125
Projectile = "_grenade7"
FireStdDev =0.011289478601075544
FireStdDevAuto =0.005644739300537772
