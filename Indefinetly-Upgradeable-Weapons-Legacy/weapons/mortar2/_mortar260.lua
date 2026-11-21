dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head60",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head60"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2414.2926193169706
MetalFireCost = 181.07194644877285
ReloadTime = 4.78125
MinFireAngle = 0
Projectile = "_mortar260"
