dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head61",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head61"
NodeEffects = {}
MinFireSpeed = 25000.0
MaxFireSpeed = 25000.1
EnergyFireCost = 2472.0159414937984
MetalFireCost = 37.08023912240699
ReloadTime = 2.6171875
Projectile = "_sniper261"
