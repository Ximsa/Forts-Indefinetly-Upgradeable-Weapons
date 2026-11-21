dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head32",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head32"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1113.2968975014403
MetalFireCost = 83.49726731260805
ReloadTime = 6.75
MinFireAngle = 15.0
Projectile = "_mortar232"
