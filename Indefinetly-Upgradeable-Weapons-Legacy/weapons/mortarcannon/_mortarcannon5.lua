local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head5",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head5"
NodeEffects = {}
MinFireSpeed = 1673.055
MaxFireSpeed = 5690.0
EnergyFireCost = 1178.762559890747
MetalFireCost = 29.469063997268677
ReloadTime = 9.609375
Projectile = "_mortar25"
FireStdDevAuto =0.00078732
