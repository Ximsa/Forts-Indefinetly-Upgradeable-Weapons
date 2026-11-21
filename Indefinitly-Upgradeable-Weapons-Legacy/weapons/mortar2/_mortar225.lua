dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head25",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head25"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 867.1525406278627
MetalFireCost = 65.03644054708971
ReloadTime = 7.2421875
MinFireAngle = 21.5625
Projectile = "_mortar225"
