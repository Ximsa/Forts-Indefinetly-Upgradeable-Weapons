dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head3",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head3"
NodeEffects = {}
MinFireSpeed = 10500.0
MaxFireSpeed = 10500.1
EnergyFireCost = 246.611328125
MetalFireCost = 3.699169921875
ReloadTime = 4.8828125
Projectile = "_sniper23"
