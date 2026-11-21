local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel50"
NodeEffects = {}
MinFireSpeed = 8.589625345533532
MaxFireSpeed = 23850.1
EnergyFireCost = 235464.4770469602
MetalFireCost = 4709.289540939206
ReloadTime = 76.171875
Projectile = "_atomcannon50"
FireStdDev =9.370406407450671e-05
FireStdDevAuto =0.00010307447048195738
