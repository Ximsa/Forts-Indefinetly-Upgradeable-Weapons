local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head13",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head13"
NodeEffects = {}
MinFireSpeed = 720.1953180265502
MaxFireSpeed = 7570.0
EnergyFireCost = 2010.537999482773
MetalFireCost = 50.26344998706933
ReloadTime = 8.984375
Projectile = "_mortar213"
FireStdDevAuto =0.0003389154437772
