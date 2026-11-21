dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head36",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head36"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1266.420421061614
MetalFireCost = 94.98153157962106
ReloadTime = 6.46875
MinFireAngle = 11.25
Projectile = "_mortar236"
