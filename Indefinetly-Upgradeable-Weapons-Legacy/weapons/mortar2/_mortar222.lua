dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head22",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head22"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 769.56997946418
MetalFireCost = 57.71774845981351
ReloadTime = 7.453125
MinFireAngle = 24.375
Projectile = "_mortar222"
