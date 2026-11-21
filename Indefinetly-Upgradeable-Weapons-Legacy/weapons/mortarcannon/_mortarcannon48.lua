local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head48",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head48"
NodeEffects = {}
MinFireSpeed = 18.02760874988519
MaxFireSpeed = 15795.0
EnergyFireCost = 7148.478091242407
MetalFireCost = 178.7119522810602
ReloadTime = 6.25
Projectile = "_mortar248"
FireStdDevAuto =8.483580588181267e-06
