dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head28",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head28"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 969.381128196437
MetalFireCost = 72.7035846147328
ReloadTime = 7.03125
MinFireAngle = 18.75
Projectile = "_mortar228"
