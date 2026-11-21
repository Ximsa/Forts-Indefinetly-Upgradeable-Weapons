dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head11",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head11"
NodeEffects = {}
MinFireSpeed = 12500.0
MaxFireSpeed = 12500.1
EnergyFireCost = 448.2061328923928
MetalFireCost = 6.723091993385893
ReloadTime = 4.5703125
Projectile = "_sniper211"
