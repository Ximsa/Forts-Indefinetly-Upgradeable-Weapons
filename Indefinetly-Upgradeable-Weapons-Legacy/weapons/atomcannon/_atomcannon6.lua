local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel6"
NodeEffects = {}
MinFireSpeed = 885.735
MaxFireSpeed = 6250.1
EnergyFireCost = 39911.8976527825
MetalFireCost = 798.23795305565
ReloadTime = 119.140625
Projectile = "_atomcannon6"
FireStdDev =0.006209213230591549
FireStdDevAuto =0.006830134553650705
