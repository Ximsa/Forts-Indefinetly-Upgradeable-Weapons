dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head56",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head56"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2192.144266180405
MetalFireCost = 164.4108199635304
ReloadTime = 5.0625
MinFireAngle = 0
Projectile = "_mortar256"
