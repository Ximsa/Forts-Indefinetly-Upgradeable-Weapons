local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head10",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head10"
NodeEffects = {}
MinFireSpeed = 987.9222469500003
MaxFireSpeed = 6865.0
EnergyFireCost = 1686.4733849300394
MetalFireCost = 42.16183462325099
ReloadTime = 9.21875
Projectile = "_mortar210"
FireStdDevAuto =0.0004649045868
