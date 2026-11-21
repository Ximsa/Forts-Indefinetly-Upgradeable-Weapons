dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head19",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head19"
NodeEffects = {}
MinFireSpeed = 14500.0
MaxFireSpeed = 14500.1
EnergyFireCost = 676.4222947534201
MetalFireCost = 10.146334421301304
ReloadTime = 4.2578125
Projectile = "_sniper219"
