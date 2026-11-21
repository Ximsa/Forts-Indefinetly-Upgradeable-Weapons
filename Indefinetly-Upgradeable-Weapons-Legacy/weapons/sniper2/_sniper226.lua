dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head26",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head26"
NodeEffects = {}
MinFireSpeed = 16250.0
MaxFireSpeed = 16250.1
EnergyFireCost = 900.701799075173
MetalFireCost = 13.510526986127601
ReloadTime = 3.984375
Projectile = "_sniper226"
