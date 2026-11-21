local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel42"
NodeEffects = {}
MinFireSpeed = 19.954191970936716
MaxFireSpeed = 20650.1
EnergyFireCost = 189333.6466295883
MetalFireCost = 3786.6729325917677
ReloadTime = 83.984375
Projectile = "_atomcannon42"
FireStdDev =0.0002008629832016357
FireStdDevAuto =0.0002209492815217993
