local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel61"
NodeEffects = {}
MinFireSpeed = 24000.0
MaxFireSpeed = 24000.1
EnergyFireCost = 37080.23912240699
MetalFireCost = 927.0059780601744
ReloadTime = 13.609375
Projectile = "_hellfirecannon61"
FireStdDev =3.2842702814728095e-05
FireStdDevAuto =3.941124337767371e-05
