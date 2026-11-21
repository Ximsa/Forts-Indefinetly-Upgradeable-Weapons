local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel32"
NodeEffects = {}
MinFireSpeed = 57.22806367154192
MaxFireSpeed = 16650.1
EnergyFireCost = 139162.11218768
MetalFireCost = 2783.2422437536015
ReloadTime = 93.75
Projectile = "_atomcannon32"
FireStdDev =0.000520986848192436
FireStdDevAuto =0.0005730855330116796
