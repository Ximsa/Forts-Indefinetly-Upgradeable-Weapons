dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head57",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head57"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2246.3965203394737
MetalFireCost = 168.47973902546056
ReloadTime = 4.9921875
MinFireAngle = 0
Projectile = "_mortar257"
