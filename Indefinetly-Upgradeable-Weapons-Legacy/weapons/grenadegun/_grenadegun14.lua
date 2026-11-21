local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head14"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 6350.0
MaxFireSpeed = 6350.1
EnergyFireCost = 9283.542868795525
MetalFireCost = 132.6220409827932
ReloadTime = 22.265625
Projectile = "_grenade14"
FireStdDev =0.005793287594733755
FireStdDevAuto =0.0028966437973668773
