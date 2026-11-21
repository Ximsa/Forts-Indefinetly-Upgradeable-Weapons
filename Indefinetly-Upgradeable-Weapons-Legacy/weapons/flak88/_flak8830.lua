local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel30"
NodeEffects = {}
MinFireSpeed = 19600.0
MaxFireSpeed = 19600.1
EnergyFireCost = 8061.731766694847
MetalFireCost = 208.04469075341538
ReloadTime = 4.2109375
Projectile = "_cannon88he30"
FireStdDev =0.0003151970431564238
FireStdDevAuto =0.0003151970431564238
