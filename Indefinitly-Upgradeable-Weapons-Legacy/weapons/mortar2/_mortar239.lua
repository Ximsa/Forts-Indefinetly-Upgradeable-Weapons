dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head39",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head39"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1387.6586461412267
MetalFireCost = 104.07439846059204
ReloadTime = 6.2578125
MinFireAngle = 8.4375
Projectile = "_mortar239"
