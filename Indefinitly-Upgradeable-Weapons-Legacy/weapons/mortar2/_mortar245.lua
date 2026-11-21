dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head45",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head45"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1647.7268281753747
MetalFireCost = 123.57951211315317
ReloadTime = 5.8359375
MinFireAngle = 2.8125
Projectile = "_mortar245"
