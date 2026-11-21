dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head5",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head5"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 294.69063997268677
MetalFireCost = 22.101797997951508
ReloadTime = 8.6484375
MinFireAngle = 40.3125
Projectile = "_mortar25"
