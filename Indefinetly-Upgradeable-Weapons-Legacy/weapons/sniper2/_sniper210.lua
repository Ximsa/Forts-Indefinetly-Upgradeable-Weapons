dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head10",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head10"
NodeEffects = {}
MinFireSpeed = 12250.0
MaxFireSpeed = 12250.1
EnergyFireCost = 421.61834623250985
MetalFireCost = 6.324275193487648
ReloadTime = 4.609375
Projectile = "_sniper210"
