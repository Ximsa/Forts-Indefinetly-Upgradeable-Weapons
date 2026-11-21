local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel63"
NodeEffects = {}
MinFireSpeed = 24600.0
MaxFireSpeed = 24600.1
EnergyFireCost = 38852.7368877367
MetalFireCost = 971.3184221934172
ReloadTime = 13.203125
Projectile = "_hellfirecannon63"
FireStdDev =2.7142729598948835e-05
FireStdDevAuto =3.25712755187386e-05
