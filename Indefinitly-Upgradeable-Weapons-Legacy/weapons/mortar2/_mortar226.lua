dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head26",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head26"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 900.701799075173
MetalFireCost = 67.55263493063799
ReloadTime = 7.171875
MinFireAngle = 20.625
Projectile = "_mortar226"
