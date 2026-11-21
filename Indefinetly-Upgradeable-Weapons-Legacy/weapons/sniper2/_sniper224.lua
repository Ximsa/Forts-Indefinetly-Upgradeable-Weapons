dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head24",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head24"
NodeEffects = {}
MinFireSpeed = 15750.0
MaxFireSpeed = 15750.1
EnergyFireCost = 834.1194246182032
MetalFireCost = 12.511791369273054
ReloadTime = 4.0625
Projectile = "_sniper224"
