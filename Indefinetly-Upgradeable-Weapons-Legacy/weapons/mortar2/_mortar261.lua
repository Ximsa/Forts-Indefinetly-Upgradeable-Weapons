dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head61",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head61"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2472.0159414937984
MetalFireCost = 185.4011956120349
ReloadTime = 4.7109375
MinFireAngle = 0
Projectile = "_mortar261"
