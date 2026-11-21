dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head38",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head38"
NodeEffects = {}
MinFireSpeed = 19250.0
MaxFireSpeed = 19250.1
EnergyFireCost = 1346.6177438929
MetalFireCost = 20.19926615839352
ReloadTime = 3.515625
Projectile = "_sniper238"
