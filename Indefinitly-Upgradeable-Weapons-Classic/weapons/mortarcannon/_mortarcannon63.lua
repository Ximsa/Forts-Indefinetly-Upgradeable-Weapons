local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head63",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head63"
NodeEffects = {}
MinFireSpeed = 3.7117247744732635
MaxFireSpeed = 19320.0
EnergyFireCost = 10360.729836729786
MetalFireCost = 259.0182459182446
ReloadTime = 5.078125
Projectile = "_mortar263"
FireStdDevAuto =1.7466940115168302e-06
