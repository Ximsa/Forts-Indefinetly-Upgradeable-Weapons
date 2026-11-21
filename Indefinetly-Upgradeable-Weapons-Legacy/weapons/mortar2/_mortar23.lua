dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head3",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head3"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 246.611328125
MetalFireCost = 18.495849609375
ReloadTime = 8.7890625
MinFireAngle = 42.1875
Projectile = "_mortar23"
