local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel46"
NodeEffects = {}
MinFireSpeed = 13.091945352131582
MaxFireSpeed = 22250.1
EnergyFireCost = 211684.06998320192
MetalFireCost = 4233.681399664039
ReloadTime = 80.078125
Projectile = "_atomcannon46"
FireStdDev =0.0001371921202114853
FireStdDevAuto =0.00015091133223263384
