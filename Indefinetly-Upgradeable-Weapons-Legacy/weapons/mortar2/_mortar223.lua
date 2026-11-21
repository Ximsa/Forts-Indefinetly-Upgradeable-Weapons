dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head23",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head23"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 801.5945103933078
MetalFireCost = 60.119588279498096
ReloadTime = 7.3828125
MinFireAngle = 23.4375
Projectile = "_mortar223"
