local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel27"
NodeEffects = {}
MinFireSpeed = 96.91622833840016
MaxFireSpeed = 14650.1
EnergyFireCost = 116846.9080857153
MetalFireCost = 2336.938161714307
ReloadTime = 98.6328125
Projectile = "_atomcannon27"
FireStdDev =0.0008390545288824003
FireStdDevAuto =0.0009229599817706405
