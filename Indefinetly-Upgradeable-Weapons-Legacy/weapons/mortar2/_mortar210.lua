dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head10",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head10"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 421.61834623250985
MetalFireCost = 31.621375967438244
ReloadTime = 8.296875
MinFireAngle = 35.625
Projectile = "_mortar210"
