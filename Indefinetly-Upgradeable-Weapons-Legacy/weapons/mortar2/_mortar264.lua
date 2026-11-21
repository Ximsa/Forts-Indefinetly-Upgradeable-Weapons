dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head64",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head64"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2650.6540601071715
MetalFireCost = 198.79905450803793
ReloadTime = 4.5
MinFireAngle = 0
Projectile = "_mortar264"
