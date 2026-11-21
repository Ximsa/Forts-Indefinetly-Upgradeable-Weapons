local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel13"
NodeEffects = {}
MinFireSpeed = 423.6443047215
MaxFireSpeed = 9050.1
EnergyFireCost = 62829.312483836664
MetalFireCost = 1256.5862496767331
ReloadTime = 112.3046875
Projectile = "_atomcannon13"
FireStdDev =0.0031863081771035654
FireStdDevAuto =0.003504938994813922
