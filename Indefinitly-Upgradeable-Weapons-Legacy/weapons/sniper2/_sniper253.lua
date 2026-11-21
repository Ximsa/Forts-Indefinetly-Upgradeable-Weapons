dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head53",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head53"
NodeEffects = {}
MinFireSpeed = 23000.0
MaxFireSpeed = 23000.1
EnergyFireCost = 2034.344238556563
MetalFireCost = 30.51516357834847
ReloadTime = 2.9296875
Projectile = "_sniper253"
