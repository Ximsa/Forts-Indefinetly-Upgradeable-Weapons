local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head19",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head19"
NodeEffects = {}
MinFireSpeed = 382.7413200073479
MaxFireSpeed = 8980.0
EnergyFireCost = 2705.6891790136806
MetalFireCost = 67.64222947534202
ReloadTime = 8.515625
Projectile = "_mortar219"
FireStdDevAuto =0.000180113562356399
