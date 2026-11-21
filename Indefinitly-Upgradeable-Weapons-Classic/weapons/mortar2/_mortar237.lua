dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head37",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head37"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1306.2082401407017
MetalFireCost = 97.96561801055265
ReloadTime = 6.3984375
MinFireAngle = 10.3125
Projectile = "_mortar237"
