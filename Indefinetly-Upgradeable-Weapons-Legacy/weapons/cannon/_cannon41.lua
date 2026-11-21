dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel41",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel41"
NodeEffects = {}
MinFireSpeed = 10440.0
MaxFireSpeed = 10440.1
EnergyFireCost = 22075.113940234438
MetalFireCost = 367.91856567057386
ReloadTime = 17.671875
Projectile = "_cannon41"
