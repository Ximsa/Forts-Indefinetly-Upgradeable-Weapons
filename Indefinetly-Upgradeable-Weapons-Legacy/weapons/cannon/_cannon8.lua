dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel8",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel8"
NodeEffects = {}
MinFireSpeed = 6777.0
MaxFireSpeed = 6777.1
EnergyFireCost = 5544.954128408381
MetalFireCost = 92.41590214013968
ReloadTime = 24.375
Projectile = "_cannon8"
