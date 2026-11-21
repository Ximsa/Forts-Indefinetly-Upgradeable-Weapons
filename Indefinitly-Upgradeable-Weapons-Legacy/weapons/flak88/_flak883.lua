local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel3"
NodeEffects = {}
MinFireSpeed = 8800.0
MaxFireSpeed = 8800.1
EnergyFireCost = 1911.23779296875
MetalFireCost = 49.322265625
ReloadTime = 5.37109375
Projectile = "_cannon88he3"
FireStdDev =0.004132231404958677
FireStdDevAuto =0.004132231404958677
