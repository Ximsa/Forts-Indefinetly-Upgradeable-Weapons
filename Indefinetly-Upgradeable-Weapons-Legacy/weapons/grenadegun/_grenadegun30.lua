local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head30"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 9550.0
MaxFireSpeed = 9550.1
EnergyFireCost = 18203.910440923846
MetalFireCost = 260.0558634417692
ReloadTime = 19.140625
Projectile = "_grenade30"
FireStdDev =0.0012607881726256953
FireStdDevAuto =0.0006303940863128477
