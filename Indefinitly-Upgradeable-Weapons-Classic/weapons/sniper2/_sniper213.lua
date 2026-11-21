dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head13",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head13"
NodeEffects = {}
MinFireSpeed = 13000.0
MaxFireSpeed = 13000.1
EnergyFireCost = 502.6344998706933
MetalFireCost = 7.539517498060399
ReloadTime = 4.4921875
Projectile = "_sniper213"
