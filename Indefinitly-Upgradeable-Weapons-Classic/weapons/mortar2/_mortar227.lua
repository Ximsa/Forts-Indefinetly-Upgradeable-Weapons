dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head27",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head27"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 934.7752646857225
MetalFireCost = 70.10814485142922
ReloadTime = 7.1015625
MinFireAngle = 19.6875
Projectile = "_mortar227"
