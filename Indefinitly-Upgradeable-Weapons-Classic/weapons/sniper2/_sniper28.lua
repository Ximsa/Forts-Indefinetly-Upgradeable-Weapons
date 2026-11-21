dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head8",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head8"
NodeEffects = {}
MinFireSpeed = 11750.0
MaxFireSpeed = 11750.1
EnergyFireCost = 369.6636085605587
MetalFireCost = 5.5449541284083805
ReloadTime = 4.6875
Projectile = "_sniper28"
