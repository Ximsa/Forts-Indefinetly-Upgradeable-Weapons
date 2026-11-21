dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head9",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head9"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 395.4396024443174
MetalFireCost = 29.65797018332381
ReloadTime = 8.3671875
MinFireAngle = 36.5625
Projectile = "_mortar29"
