dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head27",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head27"
NodeEffects = {}
MinFireSpeed = 16500.0
MaxFireSpeed = 16500.1
EnergyFireCost = 934.7752646857225
MetalFireCost = 14.021628970285846
ReloadTime = 3.9453125
Projectile = "_sniper227"
