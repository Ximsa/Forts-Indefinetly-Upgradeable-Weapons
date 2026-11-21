local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head16",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head16"
NodeEffects = {}
MinFireSpeed = 525.0223868413551
MaxFireSpeed = 8275.0
EnergyFireCost = 2350.031731063677
MetalFireCost = 58.75079327659193
ReloadTime = 8.75
Projectile = "_mortar216"
FireStdDevAuto =0.00024706935851357884
