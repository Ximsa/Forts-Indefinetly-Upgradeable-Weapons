dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head48",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head48"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1787.1195228106017
MetalFireCost = 134.03396421079518
ReloadTime = 5.625
MinFireAngle = 0.0
Projectile = "_mortar248"
