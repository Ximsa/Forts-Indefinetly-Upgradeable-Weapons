dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head15",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head15"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 558.7770414925974
MetalFireCost = 41.90827811194481
ReloadTime = 7.9453125
MinFireAngle = 30.9375
Projectile = "_mortar215"
