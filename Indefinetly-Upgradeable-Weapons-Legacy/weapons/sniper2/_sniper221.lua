dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head21",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head21"
NodeEffects = {}
MinFireSpeed = 15000.0
MaxFireSpeed = 15000.1
EnergyFireCost = 738.0381336262695
MetalFireCost = 11.070572004394046
ReloadTime = 4.1796875
Projectile = "_sniper221"
