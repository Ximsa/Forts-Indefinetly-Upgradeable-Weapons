dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel17",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel17"
NodeEffects = {}
MinFireSpeed = 7776.0
MaxFireSpeed = 7776.1
EnergyFireCost = 9250.316163230802
MetalFireCost = 154.17193605384668
ReloadTime = 22.546875
Projectile = "_cannon17"
