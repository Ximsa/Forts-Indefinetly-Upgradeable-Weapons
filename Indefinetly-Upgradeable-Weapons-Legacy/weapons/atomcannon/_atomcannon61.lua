local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel61"
NodeEffects = {}
MinFireSpeed = 2.6955154498716505
MaxFireSpeed = 28250.1
EnergyFireCost = 309001.99268672476
MetalFireCost = 6180.039853734498
ReloadTime = 65.4296875
Projectile = "_atomcannon61"
FireStdDev =3.2842702814728095e-05
FireStdDevAuto =3.612697309620091e-05
