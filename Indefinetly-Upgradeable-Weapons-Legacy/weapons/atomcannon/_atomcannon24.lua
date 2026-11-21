local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel24"
NodeEffects = {}
MinFireSpeed = 132.9440717947876
MaxFireSpeed = 13450.1
EnergyFireCost = 104264.9280772754
MetalFireCost = 2085.2985615455086
ReloadTime = 101.5625
Projectile = "_atomcannon24"
FireStdDev =0.0011167815779424752
FireStdDevAuto =0.0012284597357367227
