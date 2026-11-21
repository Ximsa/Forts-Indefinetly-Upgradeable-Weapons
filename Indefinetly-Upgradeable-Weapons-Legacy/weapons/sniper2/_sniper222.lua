dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head22",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head22"
NodeEffects = {}
MinFireSpeed = 15250.0
MaxFireSpeed = 15250.1
EnergyFireCost = 769.56997946418
MetalFireCost = 11.543549691962705
ReloadTime = 4.140625
Projectile = "_sniper222"
