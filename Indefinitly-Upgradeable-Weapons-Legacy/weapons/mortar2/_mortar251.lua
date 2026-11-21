dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head51",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head51"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1933.1488760065517
MetalFireCost = 144.98616570049143
ReloadTime = 5.4140625
MinFireAngle = 0
Projectile = "_mortar251"
