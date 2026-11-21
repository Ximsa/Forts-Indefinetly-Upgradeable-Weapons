dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head60",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head60"
NodeEffects = {}
MinFireSpeed = 24750.0
MaxFireSpeed = 24750.1
EnergyFireCost = 2414.2926193169706
MetalFireCost = 36.21438928975457
ReloadTime = 2.65625
Projectile = "_sniper260"
