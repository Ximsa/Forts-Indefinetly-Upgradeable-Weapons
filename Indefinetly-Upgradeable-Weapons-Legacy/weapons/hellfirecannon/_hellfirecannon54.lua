local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel54"
NodeEffects = {}
MinFireSpeed = 21900.0
MaxFireSpeed = 21900.1
EnergyFireCost = 31291.963009260144
MetalFireCost = 782.2990752315035
ReloadTime = 15.03125
Projectile = "_hellfirecannon54"
FireStdDev =6.40011365852788e-05
FireStdDevAuto =7.680136390233456e-05
