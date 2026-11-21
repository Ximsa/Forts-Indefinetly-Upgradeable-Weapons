dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head4",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head4"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 270.4646301269531
MetalFireCost = 20.284847259521484
ReloadTime = 8.71875
MinFireAngle = 41.25
Projectile = "_mortar24"
