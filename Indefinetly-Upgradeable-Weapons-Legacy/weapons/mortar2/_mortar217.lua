dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head17",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head17"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 616.6877442153867
MetalFireCost = 46.25158081615401
ReloadTime = 7.8046875
MinFireAngle = 29.0625
Projectile = "_mortar217"
