dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head51",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head51"
NodeEffects = {}
MinFireSpeed = 22500.0
MaxFireSpeed = 22500.1
EnergyFireCost = 1933.1488760065517
MetalFireCost = 28.997233140098302
ReloadTime = 3.0078125
Projectile = "_sniper251"
