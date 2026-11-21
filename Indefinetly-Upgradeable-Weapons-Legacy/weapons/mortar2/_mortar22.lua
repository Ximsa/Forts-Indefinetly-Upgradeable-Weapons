dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head2",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head2"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 223.125
MetalFireCost = 16.734375
ReloadTime = 8.859375
MinFireAngle = 43.125
Projectile = "_mortar22"
