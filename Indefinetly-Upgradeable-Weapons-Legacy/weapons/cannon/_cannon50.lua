dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel50",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel50"
NodeEffects = {}
MinFireSpeed = 11439.0
MaxFireSpeed = 11439.1
EnergyFireCost = 28255.73724563523
MetalFireCost = 470.9289540939204
ReloadTime = 15.84375
Projectile = "_cannon50"
