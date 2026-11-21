local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head39"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 11350.0
MaxFireSpeed = 11350.1
EnergyFireCost = 24284.02630747147
MetalFireCost = 346.91466153530666
ReloadTime = 17.3828125
Projectile = "_grenade39"
FireStdDev =0.0005346972612827544
FireStdDevAuto =0.0002673486306413772
