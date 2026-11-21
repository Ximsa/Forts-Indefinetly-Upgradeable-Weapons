dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head46",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head46"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1693.472559865615
MetalFireCost = 127.01044198992119
ReloadTime = 5.765625
MinFireAngle = 1.875
Projectile = "_mortar246"
