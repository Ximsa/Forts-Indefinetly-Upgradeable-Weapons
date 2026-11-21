dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head42",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head42"
NodeEffects = {}
MinFireSpeed = 20250.0
MaxFireSpeed = 20250.1
EnergyFireCost = 1514.6691730367063
MetalFireCost = 22.720037595550618
ReloadTime = 3.359375
Projectile = "_sniper242"
