dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel2",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel2"
NodeEffects = {}
MinFireSpeed = 6111.0
MaxFireSpeed = 6111.1
EnergyFireCost = 3346.875
MetalFireCost = 55.78125
ReloadTime = 25.59375
Projectile = "_cannon2"
