dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head55",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head55"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2138.7266620853215
MetalFireCost = 160.40449965639917
ReloadTime = 5.1328125
MinFireAngle = 0
Projectile = "_mortar255"
