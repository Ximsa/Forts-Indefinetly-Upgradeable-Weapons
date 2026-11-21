local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel32"
NodeEffects = {}
MinFireSpeed = 15300.0
MaxFireSpeed = 15300.1
EnergyFireCost = 16699.453462521604
MetalFireCost = 417.4863365630401
ReloadTime = 19.5
Projectile = "_hellfirecannon32"
FireStdDev =0.000520986848192436
FireStdDevAuto =0.0006251842178309231
