dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head29",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head29"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1004.5277083245063
MetalFireCost = 75.339578124338
ReloadTime = 6.9609375
MinFireAngle = 17.8125
Projectile = "_mortar229"
