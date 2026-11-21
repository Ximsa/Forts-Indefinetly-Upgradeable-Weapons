dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head12",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head12"
NodeEffects = {}
MinFireSpeed = 12750.0
MaxFireSpeed = 12750.1
EnergyFireCost = 475.20935371883644
MetalFireCost = 7.128140305782547
ReloadTime = 4.53125
Projectile = "_sniper212"
