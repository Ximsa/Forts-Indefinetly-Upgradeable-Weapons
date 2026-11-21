dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head24",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head24"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 834.1194246182032
MetalFireCost = 62.558956846365255
ReloadTime = 7.3125
MinFireAngle = 22.5
Projectile = "_mortar224"
