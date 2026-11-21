local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel39"
NodeEffects = {}
MinFireSpeed = 17400.0
MaxFireSpeed = 17400.1
EnergyFireCost = 20814.879692118404
MetalFireCost = 520.37199230296
ReloadTime = 18.078125
Projectile = "_hellfirecannon39"
FireStdDev =0.0002673486306413772
FireStdDevAuto =0.00032081835676965267
