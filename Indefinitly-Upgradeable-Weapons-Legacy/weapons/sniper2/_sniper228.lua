dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head28",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head28"
NodeEffects = {}
MinFireSpeed = 16750.0
MaxFireSpeed = 16750.1
EnergyFireCost = 969.381128196437
MetalFireCost = 14.540716922946563
ReloadTime = 3.90625
Projectile = "_sniper228"
