dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head53",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head53"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2034.344238556563
MetalFireCost = 152.57581789174225
ReloadTime = 5.2734375
MinFireAngle = 0
Projectile = "_mortar253"
