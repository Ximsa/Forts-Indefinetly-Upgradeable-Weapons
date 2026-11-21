dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head18",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head18"
NodeEffects = {}
MinFireSpeed = 14250.0
MaxFireSpeed = 14250.1
EnergyFireCost = 646.3234902187521
MetalFireCost = 9.694852353281284
ReloadTime = 4.296875
Projectile = "_sniper218"
