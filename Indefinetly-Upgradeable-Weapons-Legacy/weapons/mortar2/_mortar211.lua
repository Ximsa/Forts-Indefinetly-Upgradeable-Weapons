dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head11",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head11"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 448.2061328923928
MetalFireCost = 33.615459966929464
ReloadTime = 8.2265625
MinFireAngle = 34.6875
Projectile = "_mortar211"
