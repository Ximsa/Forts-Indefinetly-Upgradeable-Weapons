dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head45",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head45"
NodeEffects = {}
MinFireSpeed = 21000.0
MaxFireSpeed = 21000.1
EnergyFireCost = 1647.7268281753747
MetalFireCost = 24.71590242263065
ReloadTime = 3.2421875
Projectile = "_sniper245"
