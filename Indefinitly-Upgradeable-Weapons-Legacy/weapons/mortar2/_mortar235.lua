dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head35",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head35"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1227.2447222760507
MetalFireCost = 92.04335417070382
ReloadTime = 6.5390625
MinFireAngle = 12.1875
Projectile = "_mortar235"
