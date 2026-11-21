local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel40"
NodeEffects = {}
MinFireSpeed = 24.634804902391007
MaxFireSpeed = 19850.1
EnergyFireCost = 178667.60156089792
MetalFireCost = 3573.35203121796
ReloadTime = 85.9375
Projectile = "_atomcannon40"
FireStdDev =0.00024304420967397926
FireStdDevAuto =0.0002673486306413772
