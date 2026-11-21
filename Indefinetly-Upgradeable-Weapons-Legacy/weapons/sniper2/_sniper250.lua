dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head50",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head50"
NodeEffects = {}
MinFireSpeed = 22250.0
MaxFireSpeed = 22250.1
EnergyFireCost = 1883.7158163756817
MetalFireCost = 28.255737245635252
ReloadTime = 3.046875
Projectile = "_sniper250"
