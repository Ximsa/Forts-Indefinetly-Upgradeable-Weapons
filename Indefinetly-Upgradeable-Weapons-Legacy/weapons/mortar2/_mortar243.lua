dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head43",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head43"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1558.3358788654048
MetalFireCost = 116.87519091490542
ReloadTime = 5.9765625
MinFireAngle = 4.6875
Projectile = "_mortar243"
