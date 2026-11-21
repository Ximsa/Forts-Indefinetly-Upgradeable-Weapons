dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head40",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head40"
NodeEffects = {}
MinFireSpeed = 19750.0
MaxFireSpeed = 19750.1
EnergyFireCost = 1429.3408124871833
MetalFireCost = 21.440112187307772
ReloadTime = 3.4375
Projectile = "_sniper240"
