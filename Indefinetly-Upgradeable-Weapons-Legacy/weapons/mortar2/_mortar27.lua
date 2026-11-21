dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head7",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head7"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 344.2841684288578
MetalFireCost = 25.821312632164336
ReloadTime = 8.5078125
MinFireAngle = 38.4375
Projectile = "_mortar27"
