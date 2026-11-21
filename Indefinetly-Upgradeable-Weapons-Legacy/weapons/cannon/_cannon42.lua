dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel42",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel42"
NodeEffects = {}
MinFireSpeed = 10551.0
MaxFireSpeed = 10551.1
EnergyFireCost = 22720.037595550602
MetalFireCost = 378.6672932591766
ReloadTime = 17.46875
Projectile = "_cannon42"
