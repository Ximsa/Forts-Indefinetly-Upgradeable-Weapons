dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head41",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head41"
NodeEffects = {}
MinFireSpeed = 20000.0
MaxFireSpeed = 20000.1
EnergyFireCost = 1471.6742626822954
MetalFireCost = 22.075113940234456
ReloadTime = 3.3984375
Projectile = "_sniper241"
