local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head60",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head60"
NodeEffects = {}
MinFireSpeed = 5.091529183090897
MaxFireSpeed = 18615.0
EnergyFireCost = 9657.170477267886
MetalFireCost = 241.4292619316971
ReloadTime = 5.3125
Projectile = "_mortar260"
FireStdDevAuto =2.3960137332192458e-06
