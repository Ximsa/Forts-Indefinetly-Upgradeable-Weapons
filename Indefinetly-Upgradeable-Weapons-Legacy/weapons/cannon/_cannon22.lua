dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel22",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel22"
NodeEffects = {}
MinFireSpeed = 8331.0
MaxFireSpeed = 8331.1
EnergyFireCost = 11543.549691962702
MetalFireCost = 192.392494866045
ReloadTime = 21.53125
Projectile = "_cannon22"
