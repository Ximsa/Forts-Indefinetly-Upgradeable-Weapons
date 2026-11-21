dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head36",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head36"
NodeEffects = {}
MinFireSpeed = 18750.0
MaxFireSpeed = 18750.1
EnergyFireCost = 1266.420421061614
MetalFireCost = 18.996306315924226
ReloadTime = 3.59375
Projectile = "_sniper236"
