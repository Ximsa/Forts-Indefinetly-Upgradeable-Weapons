dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head16",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head16"
NodeEffects = {}
MinFireSpeed = 13750.0
MaxFireSpeed = 13750.1
EnergyFireCost = 587.5079327659192
MetalFireCost = 8.81261899148879
ReloadTime = 4.375
Projectile = "_sniper216"
