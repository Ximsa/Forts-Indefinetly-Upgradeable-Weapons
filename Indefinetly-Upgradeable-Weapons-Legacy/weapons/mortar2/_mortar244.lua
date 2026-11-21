dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head44",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head44"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1602.6848769726766
MetalFireCost = 120.20136577295081
ReloadTime = 5.90625
MinFireAngle = 3.75
Projectile = "_mortar244"
