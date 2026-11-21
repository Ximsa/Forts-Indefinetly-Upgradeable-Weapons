local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel60"
NodeEffects = {}
MinFireSpeed = 23700.0
MaxFireSpeed = 23700.1
EnergyFireCost = 36214.389289754574
MetalFireCost = 905.359732243864
ReloadTime = 13.8125
Projectile = "_hellfirecannon60"
FireStdDev =3.612697309620091e-05
FireStdDevAuto =4.3352367715441085e-05
