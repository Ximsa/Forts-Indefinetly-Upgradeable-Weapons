dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head41",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head41"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1471.6742626822954
MetalFireCost = 110.37556970117221
ReloadTime = 6.1171875
MinFireAngle = 6.5625
Projectile = "_mortar241"
