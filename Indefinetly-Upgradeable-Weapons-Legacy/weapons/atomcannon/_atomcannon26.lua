local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel26"
NodeEffects = {}
MinFireSpeed = 107.68469815377796
MaxFireSpeed = 14250.1
EnergyFireCost = 112587.72488439661
MetalFireCost = 2251.754497687933
ReloadTime = 99.609375
Projectile = "_atomcannon26"
FireStdDev =0.0009229599817706405
FireStdDevAuto =0.0010152559799477046
