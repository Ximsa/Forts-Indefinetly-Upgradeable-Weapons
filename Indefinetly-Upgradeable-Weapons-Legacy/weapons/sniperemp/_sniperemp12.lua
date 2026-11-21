local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head12"
NodeEffects = {}
MinFireSpeed = 13300.0
MaxFireSpeed = 13300.1
EnergyFireCost = 7128.140305782547
MetalFireCost = 71.28140305782547
ReloadTime = 27.1875
Projectile = "_sniperemp12"
FireStdDev =0.0003504938994813922
FireStdDevAuto =0.0014019755979255688
