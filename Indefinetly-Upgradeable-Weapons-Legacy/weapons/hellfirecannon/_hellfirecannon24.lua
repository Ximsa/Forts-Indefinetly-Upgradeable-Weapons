local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel24"
NodeEffects = {}
MinFireSpeed = 12900.0
MaxFireSpeed = 12900.1
EnergyFireCost = 12511.79136927305
MetalFireCost = 312.7947842318262
ReloadTime = 21.125
Projectile = "_hellfirecannon24"
FireStdDev =0.0011167815779424752
FireStdDevAuto =0.0013401378935309703
