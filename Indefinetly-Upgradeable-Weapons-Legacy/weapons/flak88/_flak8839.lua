local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel39"
NodeEffects = {}
MinFireSpeed = 23200.0
MaxFireSpeed = 23200.1
EnergyFireCost = 10754.35450759451
MetalFireCost = 277.53172922824535
ReloadTime = 3.82421875
Projectile = "_cannon88he39"
FireStdDev =0.0001336743153206886
FireStdDevAuto =0.0001336743153206886
