dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head9",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head9"
NodeEffects = {}
MinFireSpeed = 12000.0
MaxFireSpeed = 12000.1
EnergyFireCost = 395.4396024443174
MetalFireCost = 5.9315940366647615
ReloadTime = 4.6484375
Projectile = "_sniper29"
