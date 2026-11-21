dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head15",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head15"
NodeEffects = {}
MinFireSpeed = 13500.0
MaxFireSpeed = 13500.1
EnergyFireCost = 558.7770414925974
MetalFireCost = 8.381655622388962
ReloadTime = 4.4140625
Projectile = "_sniper215"
