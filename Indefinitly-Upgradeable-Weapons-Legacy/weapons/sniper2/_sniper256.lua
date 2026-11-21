dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head56",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head56"
NodeEffects = {}
MinFireSpeed = 23750.0
MaxFireSpeed = 23750.1
EnergyFireCost = 2192.144266180405
MetalFireCost = 32.8821639927061
ReloadTime = 2.8125
Projectile = "_sniper256"
