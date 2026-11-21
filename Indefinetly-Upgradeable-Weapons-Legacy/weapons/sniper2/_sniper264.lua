dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head64",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head64"
NodeEffects = {}
MinFireSpeed = 25750.0
MaxFireSpeed = 25750.1
EnergyFireCost = 2650.6540601071715
MetalFireCost = 39.75981090160757
ReloadTime = 2.5
Projectile = "_sniper264"
