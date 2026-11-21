dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head4",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head4"
NodeEffects = {}
MinFireSpeed = 10750.0
MaxFireSpeed = 10750.1
EnergyFireCost = 270.4646301269531
MetalFireCost = 4.056969451904297
ReloadTime = 4.84375
Projectile = "_sniper24"
