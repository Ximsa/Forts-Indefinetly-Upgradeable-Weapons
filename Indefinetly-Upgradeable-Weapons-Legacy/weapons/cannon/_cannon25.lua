dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel25",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel25"
NodeEffects = {}
MinFireSpeed = 8664.0
MaxFireSpeed = 8664.1
EnergyFireCost = 13007.288109417943
MetalFireCost = 216.78813515696567
ReloadTime = 20.921875
Projectile = "_cannon25"
