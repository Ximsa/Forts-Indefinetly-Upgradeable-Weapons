dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head38",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head38"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1346.6177438929
MetalFireCost = 100.99633079196754
ReloadTime = 6.328125
MinFireAngle = 9.375
Projectile = "_mortar238"
