local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel12"
NodeEffects = {}
MinFireSpeed = 9300.0
MaxFireSpeed = 9300.1
EnergyFireCost = 7128.140305782547
MetalFireCost = 178.20350764456367
ReloadTime = 23.5625
Projectile = "_hellfirecannon12"
FireStdDev =0.003504938994813922
FireStdDevAuto =0.004205926793776706
