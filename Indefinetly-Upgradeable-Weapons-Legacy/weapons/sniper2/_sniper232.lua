dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head32",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head32"
NodeEffects = {}
MinFireSpeed = 17750.0
MaxFireSpeed = 17750.1
EnergyFireCost = 1113.2968975014403
MetalFireCost = 16.699453462521614
ReloadTime = 3.75
Projectile = "_sniper232"
