dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel40",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel40"
NodeEffects = {}
MinFireSpeed = 10329.0
MaxFireSpeed = 10329.1
EnergyFireCost = 21440.112187307754
MetalFireCost = 357.3352031217958
ReloadTime = 17.875
Projectile = "_cannon40"
