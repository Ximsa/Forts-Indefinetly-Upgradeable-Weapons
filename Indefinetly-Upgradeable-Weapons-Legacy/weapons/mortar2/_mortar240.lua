dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head40",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head40"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1429.3408124871833
MetalFireCost = 107.20056093653879
ReloadTime = 6.1875
MinFireAngle = 7.5
Projectile = "_mortar240"
