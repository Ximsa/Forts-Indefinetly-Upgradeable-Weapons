dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head33",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head33"
NodeEffects = {}
MinFireSpeed = 18000.0
MaxFireSpeed = 18000.1
EnergyFireCost = 1150.6921615249003
MetalFireCost = 17.260382422873516
ReloadTime = 3.7109375
Projectile = "_sniper233"
