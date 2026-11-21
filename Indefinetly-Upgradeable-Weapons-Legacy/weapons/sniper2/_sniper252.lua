dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head52",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head52"
NodeEffects = {}
MinFireSpeed = 22750.0
MaxFireSpeed = 22750.1
EnergyFireCost = 1983.3543271941542
MetalFireCost = 29.75031490791234
ReloadTime = 2.96875
Projectile = "_sniper252"
