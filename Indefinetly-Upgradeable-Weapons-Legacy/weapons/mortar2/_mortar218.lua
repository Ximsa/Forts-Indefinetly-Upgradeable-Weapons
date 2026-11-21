dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head18",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head18"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 646.3234902187521
MetalFireCost = 48.474261766406414
ReloadTime = 7.734375
MinFireAngle = 28.125
Projectile = "_mortar218"
