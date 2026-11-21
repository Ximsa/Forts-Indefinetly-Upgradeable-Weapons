dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head31",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head31"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1076.4769452321873
MetalFireCost = 80.73577089241408
ReloadTime = 6.8203125
MinFireAngle = 15.9375
Projectile = "_mortar231"
