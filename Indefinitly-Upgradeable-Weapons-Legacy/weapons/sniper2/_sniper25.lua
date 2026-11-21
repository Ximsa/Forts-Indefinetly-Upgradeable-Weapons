dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head5",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head5"
NodeEffects = {}
MinFireSpeed = 11000.0
MaxFireSpeed = 11000.1
EnergyFireCost = 294.69063997268677
MetalFireCost = 4.420359599590301
ReloadTime = 4.8046875
Projectile = "_sniper25"
