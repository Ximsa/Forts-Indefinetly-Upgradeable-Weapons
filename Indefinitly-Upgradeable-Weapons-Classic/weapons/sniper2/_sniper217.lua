dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head17",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head17"
NodeEffects = {}
MinFireSpeed = 14000.0
MaxFireSpeed = 14000.1
EnergyFireCost = 616.6877442153867
MetalFireCost = 9.250316163230803
ReloadTime = 4.3359375
Projectile = "_sniper217"
