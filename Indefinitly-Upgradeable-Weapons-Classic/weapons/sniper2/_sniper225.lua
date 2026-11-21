dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head25",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head25"
NodeEffects = {}
MinFireSpeed = 16000.0
MaxFireSpeed = 16000.1
EnergyFireCost = 867.1525406278627
MetalFireCost = 13.007288109417946
ReloadTime = 4.0234375
Projectile = "_sniper225"
