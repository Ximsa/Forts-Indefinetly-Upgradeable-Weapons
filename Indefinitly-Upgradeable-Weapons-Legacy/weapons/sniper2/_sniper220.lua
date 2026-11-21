dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head20",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head20"
NodeEffects = {}
MinFireSpeed = 14750.0
MaxFireSpeed = 14750.1
EnergyFireCost = 706.9913931089424
MetalFireCost = 10.604870896634138
ReloadTime = 4.21875
Projectile = "_sniper220"
