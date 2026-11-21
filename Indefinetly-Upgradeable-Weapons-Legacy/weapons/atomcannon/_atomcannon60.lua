local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel60"
NodeEffects = {}
MinFireSpeed = 2.995017166524056
MaxFireSpeed = 27850.1
EnergyFireCost = 301786.5774146213
MetalFireCost = 6035.731548292429
ReloadTime = 66.40625
Projectile = "_atomcannon60"
FireStdDev =3.612697309620091e-05
FireStdDevAuto =3.9739670405821e-05
