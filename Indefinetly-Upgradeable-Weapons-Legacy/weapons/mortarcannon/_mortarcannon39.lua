local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head39",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head39"
NodeEffects = {}
MinFireSpeed = 46.53240926007191
MaxFireSpeed = 13680.0
EnergyFireCost = 5550.634584564907
MetalFireCost = 138.76586461412268
ReloadTime = 6.953125
Projectile = "_mortar239"
FireStdDevAuto =2.1897604357680898e-05
