local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head12"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 5950.0
MaxFireSpeed = 5950.1
EnergyFireCost = 8316.163690079638
MetalFireCost = 118.80233842970911
ReloadTime = 22.65625
Projectile = "_grenade12"
FireStdDev =0.007009877989627844
FireStdDevAuto =0.003504938994813922
