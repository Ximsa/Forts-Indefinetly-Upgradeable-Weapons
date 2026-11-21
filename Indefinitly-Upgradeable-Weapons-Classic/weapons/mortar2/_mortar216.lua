dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head16",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head16"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 587.5079327659192
MetalFireCost = 44.06309495744395
ReloadTime = 7.875
MinFireAngle = 30.0
Projectile = "_mortar216"
