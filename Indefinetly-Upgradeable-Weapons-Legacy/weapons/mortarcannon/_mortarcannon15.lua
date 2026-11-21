local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head15",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head15"
NodeEffects = {}
MinFireSpeed = 583.3582076015057
MaxFireSpeed = 8040.0
EnergyFireCost = 2235.1081659703896
MetalFireCost = 55.87770414925974
ReloadTime = 8.828125
Projectile = "_mortar215"
FireStdDevAuto =0.000274521509459532
