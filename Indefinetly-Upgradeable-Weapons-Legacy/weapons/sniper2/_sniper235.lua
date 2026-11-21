dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head35",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head35"
NodeEffects = {}
MinFireSpeed = 18500.0
MaxFireSpeed = 18500.1
EnergyFireCost = 1227.2447222760507
MetalFireCost = 18.408670834140775
ReloadTime = 3.6328125
Projectile = "_sniper235"
