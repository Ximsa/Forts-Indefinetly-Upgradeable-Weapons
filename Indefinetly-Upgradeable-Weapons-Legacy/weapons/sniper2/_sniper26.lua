dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head6",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head6"
NodeEffects = {}
MinFireSpeed = 11250.0
MaxFireSpeed = 11250.1
EnergyFireCost = 319.29518122226
MetalFireCost = 4.7894277183339
ReloadTime = 4.765625
Projectile = "_sniper26"
