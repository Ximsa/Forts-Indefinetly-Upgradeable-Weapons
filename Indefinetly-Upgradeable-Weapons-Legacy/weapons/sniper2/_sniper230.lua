dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head30",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head30"
NodeEffects = {}
MinFireSpeed = 17250.0
MaxFireSpeed = 17250.1
EnergyFireCost = 1040.2234537670768
MetalFireCost = 15.603351806506161
ReloadTime = 3.828125
Projectile = "_sniper230"
