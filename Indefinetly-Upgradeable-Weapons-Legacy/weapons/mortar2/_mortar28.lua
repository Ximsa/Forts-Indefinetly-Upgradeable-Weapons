dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head8",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head8"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 369.6636085605587
MetalFireCost = 27.724770642041904
ReloadTime = 8.4375
MinFireAngle = 37.5
Projectile = "_mortar28"
