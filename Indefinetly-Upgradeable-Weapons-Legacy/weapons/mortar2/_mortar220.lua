dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head20",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head20"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 706.9913931089424
MetalFireCost = 53.02435448317068
ReloadTime = 7.59375
MinFireAngle = 26.25
Projectile = "_mortar220"
