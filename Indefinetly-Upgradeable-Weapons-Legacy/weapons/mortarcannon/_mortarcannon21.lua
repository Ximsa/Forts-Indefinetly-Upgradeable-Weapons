local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head21",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head21"
NodeEffects = {}
MinFireSpeed = 310.0204692059518
MaxFireSpeed = 9450.0
EnergyFireCost = 2952.152534505078
MetalFireCost = 73.80381336262697
ReloadTime = 8.359375
Projectile = "_mortar221"
FireStdDevAuto =0.0001458919855086832
