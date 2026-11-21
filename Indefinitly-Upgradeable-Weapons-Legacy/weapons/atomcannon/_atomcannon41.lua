local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel41"
NodeEffects = {}
MinFireSpeed = 22.171324412151908
MaxFireSpeed = 20250.1
EnergyFireCost = 183959.28283528695
MetalFireCost = 3679.1856567057403
ReloadTime = 84.9609375
Projectile = "_atomcannon41"
FireStdDev =0.0002209492815217993
FireStdDevAuto =0.00024304420967397926
