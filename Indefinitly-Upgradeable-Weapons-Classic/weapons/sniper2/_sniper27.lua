dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head7",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head7"
NodeEffects = {}
MinFireSpeed = 11500.0
MaxFireSpeed = 11500.1
EnergyFireCost = 344.2841684288578
MetalFireCost = 5.164262526432867
ReloadTime = 4.7265625
Projectile = "_sniper27"
