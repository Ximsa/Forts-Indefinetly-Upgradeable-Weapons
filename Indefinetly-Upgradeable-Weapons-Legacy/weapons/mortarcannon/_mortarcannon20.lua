local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head20",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head20"
NodeEffects = {}
MinFireSpeed = 344.4671880066131
MaxFireSpeed = 9215.0
EnergyFireCost = 2827.9655724357694
MetalFireCost = 70.69913931089424
ReloadTime = 8.4375
Projectile = "_mortar220"
FireStdDevAuto =0.0001621022061207591
