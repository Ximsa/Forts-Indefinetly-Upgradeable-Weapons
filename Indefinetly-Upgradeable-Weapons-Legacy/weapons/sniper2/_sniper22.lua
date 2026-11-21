dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head2",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head2"
NodeEffects = {}
MinFireSpeed = 10250.0
MaxFireSpeed = 10250.1
EnergyFireCost = 223.125
MetalFireCost = 3.346875
ReloadTime = 4.921875
Projectile = "_sniper22"
