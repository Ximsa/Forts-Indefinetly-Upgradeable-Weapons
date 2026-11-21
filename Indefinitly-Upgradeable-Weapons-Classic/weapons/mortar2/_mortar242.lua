dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head42",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head42"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1514.6691730367063
MetalFireCost = 113.60018797775302
ReloadTime = 6.046875
MinFireAngle = 5.625
Projectile = "_mortar242"
