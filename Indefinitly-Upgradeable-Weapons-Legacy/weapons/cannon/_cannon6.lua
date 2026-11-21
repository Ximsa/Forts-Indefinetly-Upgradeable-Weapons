dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel6",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel6"
NodeEffects = {}
MinFireSpeed = 6555.0
MaxFireSpeed = 6555.1
EnergyFireCost = 4789.4277183339
MetalFireCost = 79.823795305565
ReloadTime = 24.78125
Projectile = "_cannon6"
