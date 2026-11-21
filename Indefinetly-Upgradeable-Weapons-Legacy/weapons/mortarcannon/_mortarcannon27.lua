local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head27",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head27"
NodeEffects = {}
MinFireSpeed = 164.7575881752803
MaxFireSpeed = 10860.0
EnergyFireCost = 3739.10105874289
MetalFireCost = 93.47752646857228
ReloadTime = 7.890625
Projectile = "_mortar227"
FireStdDevAuto =7.753298267072012e-05
