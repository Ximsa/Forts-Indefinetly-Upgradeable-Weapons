dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head23",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head23"
NodeEffects = {}
MinFireSpeed = 15500.0
MaxFireSpeed = 15500.1
EnergyFireCost = 801.5945103933078
MetalFireCost = 12.023917655899622
ReloadTime = 4.1015625
Projectile = "_sniper223"
