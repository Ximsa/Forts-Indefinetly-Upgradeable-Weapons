dofile("weapons/sniper-ap.lua")
Sprites={{Name = "sniper-ap-head49",States={Normal={Frames={{texture="weapons/snipertower/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniper-ap-head49"
NodeEffects = {}
MinFireSpeed = 22000.0
MaxFireSpeed = 22000.1
EnergyFireCost = 1835.0432653545174
MetalFireCost = 27.525648980317786
ReloadTime = 3.0859375
Projectile = "_sniper249"
