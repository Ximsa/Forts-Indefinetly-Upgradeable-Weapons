local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head39"
NodeEffects = {}
MinFireSpeed = 21400.0
MaxFireSpeed = 21400.1
EnergyFireCost = 20814.879692118404
MetalFireCost = 208.14879692118407
ReloadTime = 20.859375
Projectile = "_sniperemp39"
FireStdDev =2.673486306413771e-05
FireStdDevAuto =0.00010693945225655084
