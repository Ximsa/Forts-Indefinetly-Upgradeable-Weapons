local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel8"
NodeEffects = {}
MinFireSpeed = 8100.0
MaxFireSpeed = 8100.1
EnergyFireCost = 5544.954128408381
MetalFireCost = 138.62385321020952
ReloadTime = 24.375
Projectile = "_hellfirecannon8"
FireStdDev =0.005131581182307065
FireStdDevAuto =0.006157897418768478
