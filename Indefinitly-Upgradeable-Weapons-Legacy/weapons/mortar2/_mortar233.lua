dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head33",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head33"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1150.6921615249003
MetalFireCost = 86.30191211436754
ReloadTime = 6.6796875
MinFireAngle = 14.0625
Projectile = "_mortar233"
