dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head6",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head6"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 319.29518122226
MetalFireCost = 23.9471385916695
ReloadTime = 8.578125
MinFireAngle = 39.375
Projectile = "_mortar26"
