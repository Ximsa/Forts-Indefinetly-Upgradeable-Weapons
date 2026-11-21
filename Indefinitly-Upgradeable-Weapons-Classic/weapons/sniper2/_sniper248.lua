dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head48",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head48"
NodeEffects = {}
MinFireSpeed = 21750.0
MaxFireSpeed = 21750.1
EnergyFireCost = 1787.1195228106017
MetalFireCost = 26.80679284215905
ReloadTime = 3.125
Projectile = "_sniper248"
