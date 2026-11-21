dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head63",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head63"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2590.1824591824457
MetalFireCost = 194.2636844386835
ReloadTime = 4.5703125
MinFireAngle = 0
Projectile = "_mortar263"
